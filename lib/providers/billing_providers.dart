import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/billing_event_model.dart';
import '../models/subscription_state_model.dart'
    show BillingSource, SubscriptionStateAccess;
import '../models/user_model.dart' show SubscriptionTier;
import 'auth_providers.dart';

/// True when the *currently signed-in account* (not necessarily the active
/// student profile) is entitled to premium content right now.
///
/// Prefers [UserModel.subscriptionState]'s [SubscriptionStateAccess.isEntitled]
/// when present -- it carries the real lifecycle status (`active`/
/// `trialing`/`pastDue` vs. `expired`/`cancelled`), which
/// [UserModel.subscriptionTier] alone cannot express. Falls back to the
/// plain `subscriptionTier == premium` check when `subscriptionState` is
/// null, which is the common case for every pre-existing/seeded user
/// created before this field existed -- treating "no subscriptionState yet"
/// as "not entitled" would silently downgrade every one of those accounts
/// the moment this provider shipped. The owner bypass
/// (`currentUserModelProvider` force-overriding `subscriptionTier: premium`
/// for `AppConstants.ownerEmail`) already flows through untouched either
/// way, since the owner also has no `subscriptionState` document field.
final isPremiumEntitledProvider = Provider<bool>((ref) {
  final user = ref.watch(currentUserModelProvider).valueOrNull;
  if (user == null) return false;
  final state = user.subscriptionState;
  if (state != null) return state.isEntitled;
  return user.subscriptionTier == SubscriptionTier.premium;
});

/// Appends one immutable document to the `BillingEvents` ledger -- the
/// write-side half of the revenue history (see `BillingEventModel`'s doc
/// comment for why this ledger exists alongside the mutable
/// `subscriptionState` snapshot).
///
/// Mirrors `recordLessonAttempt`'s structure: a fresh doc ref, a model
/// built with that doc's id and the current timestamp, one `set` call.
/// Best-effort and never rethrows -- a ledger write failing must never
/// block or roll back the entitlement change (grant/revoke/purchase/etc.)
/// that triggered it; the in-app subscription state is the thing users
/// actually experience, and it must not be held hostage by telemetry.
Future<void> recordBillingEvent(
  FirebaseFirestore firestore, {
  required String uid,
  required BillingEventType type,
  required SubscriptionTier tier,
  required BillingSource source,
  int amountMinorUnits = 0,
  String currencyCode = 'USD',
}) async {
  try {
    final docRef = firestore
        .collection(AppConstants.billingEventsCollection)
        .doc();
    final event = BillingEventModel(
      id: docRef.id,
      uid: uid,
      type: type,
      tier: tier,
      source: source,
      amountMinorUnits: amountMinorUnits,
      currencyCode: currencyCode,
      occurredAtMillis: DateTime.now().millisecondsSinceEpoch,
    );
    await docRef.set(event.toJson()..remove('id'));
  } catch (_) {
    // Best-effort ledger write -- swallow so a Firestore hiccup never
    // blocks the entitlement change itself.
  }
}
