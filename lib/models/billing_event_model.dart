import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_state_model.dart' show BillingSource;
import 'user_model.dart' show SubscriptionTier;

part 'billing_event_model.freezed.dart';
part 'billing_event_model.g.dart';

/// One lifecycle transition of a user's subscription.
enum BillingEventType {
  @JsonValue('purchase')
  purchase,
  @JsonValue('renewal')
  renewal,
  @JsonValue('cancellation')
  cancellation,
  @JsonValue('refund')
  refund,
  @JsonValue('grant')
  grant,
  @JsonValue('revoke')
  revoke,
}

/// Mirrors a document in the top-level `BillingEvents` Firestore collection
/// -- an append-only revenue ledger, the source of truth for automated P&L.
///
/// [UserModel.subscriptionState] (see `subscription_state_model.dart`) is a
/// *current snapshot*; this ledger is the *history* it was derived from.
/// Revenue recognition folds this list (see [BillingLedgerTotals]) rather
/// than trusting the mutable snapshot alone, so a bug that corrupts
/// `subscriptionState` can never silently erase revenue history -- the same
/// "one immutable doc per event, never mutated" pattern as
/// `LessonAttemptModel`.
@freezed
class BillingEventModel with _$BillingEventModel {
  const factory BillingEventModel({
    required String id,
    required String uid,
    required BillingEventType type,
    required SubscriptionTier tier,
    required BillingSource source,
    @Default(0) int amountMinorUnits,
    @Default('USD') String currencyCode,
    required int occurredAtMillis,
  }) = _BillingEventModel;

  factory BillingEventModel.fromJson(Map<String, dynamic> json) =>
      _$BillingEventModelFromJson(json);
}

/// Folds a ledger into the net revenue it represents -- the automated P&L
/// calculation itself. [BillingEventType.purchase]/[BillingEventType.renewal]
/// add cash in; [BillingEventType.refund] takes it back out;
/// [BillingEventType.cancellation]/[BillingEventType.grant]/
/// [BillingEventType.revoke] carry no cash movement of their own (a
/// cancellation stops future renewals but doesn't claw back what was already
/// paid) so they're excluded from the sum entirely rather than assumed to be
/// zero-amount by convention.
extension BillingLedgerTotals on List<BillingEventModel> {
  int netRevenueMinorUnits() {
    var total = 0;
    for (final event in this) {
      switch (event.type) {
        case BillingEventType.purchase:
        case BillingEventType.renewal:
          total += event.amountMinorUnits;
        case BillingEventType.refund:
          total -= event.amountMinorUnits;
        case BillingEventType.cancellation:
        case BillingEventType.grant:
        case BillingEventType.revoke:
          break;
      }
    }
    return total;
  }
}
