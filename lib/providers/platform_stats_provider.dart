import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/app_constants.dart';
import '../models/user_model.dart';
import 'firebase_providers.dart';

/// Real, live platform-wide counts for the owner dashboard, sourced from
/// Firestore's server-side aggregate `.count()` queries -- these are
/// Spark-plan-friendly (billed as ~1 read per up-to-1000 matched documents,
/// not one read per document) and require no Cloud Functions/Admin SDK.
class PlatformStats {
  const PlatformStats({
    required this.totalUsers,
    required this.totalChildren,
    required this.totalModules,
    required this.premiumSubscribers,
  });

  final int totalUsers;
  final int totalChildren;
  final int totalModules;
  final int premiumSubscribers;
}

/// The raw Firestore value stored for [SubscriptionTier.premium].
///
/// Aggregate `where` queries need the literal stored string, not the Dart
/// enum instance -- see the `@JsonValue('premium')` annotation on
/// [SubscriptionTier.premium] in lib/models/user_model.dart.
const String _premiumSubscriptionTierValue = 'premium';

/// Runs 4 real Firestore aggregate count queries in parallel and bundles
/// the results into a [PlatformStats]. No fake/mock figures -- if this
/// provider is loading or errors out, the UI must reflect that state
/// rather than falling back to a placeholder number.
final platformStatsProvider = FutureProvider<PlatformStats>((ref) async {
  final firestore = ref.watch(firestoreProvider);

  final usersCountFuture = firestore
      .collection(AppConstants.usersCollection)
      .count()
      .get();
  final childrenCountFuture = firestore
      .collection(AppConstants.childrenCollection)
      .count()
      .get();
  final modulesCountFuture = firestore
      .collection(AppConstants.learningModulesCollection)
      .count()
      .get();
  final premiumCountFuture = firestore
      .collection(AppConstants.usersCollection)
      .where('subscriptionTier', isEqualTo: _premiumSubscriptionTierValue)
      .count()
      .get();

  final results = await Future.wait([
    usersCountFuture,
    childrenCountFuture,
    modulesCountFuture,
    premiumCountFuture,
  ]);

  return PlatformStats(
    totalUsers: results[0].count ?? 0,
    totalChildren: results[1].count ?? 0,
    totalModules: results[2].count ?? 0,
    premiumSubscribers: results[3].count ?? 0,
  );
});
