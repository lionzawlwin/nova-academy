/// App-wide constants for Nova Academy.
///
/// Keep this file free of Flutter/Firebase imports so it can be used from
/// any layer (models, providers, widgets) without creating import cycles.
library;

class AppConstants {
  AppConstants._();

  /// The single hardcoded permanent Super Admin / Owner account.
  ///
  /// This account must always resolve to [UserRole.owner] with
  /// [SubscriptionTier.premium], bypassing all paywalls, regardless of
  /// what (if anything) is stored for it in Firestore.
  static const String ownerEmail = 'lionzawlwin@gmail.com';

  /// Firestore collection names.
  static const String usersCollection = 'Users';
  static const String childrenCollection = 'Children';
  static const String learningModulesCollection = 'LearningModules';

  /// App display name.
  static const String appName = 'Nova Academy';
}

/// Returns true when [email] belongs to the hardcoded platform owner.
///
/// Case-insensitive and null-safe so it can be called directly on
/// `FirebaseAuth.instance.currentUser?.email` without extra null checks.
bool isOwnerEmail(String? email) =>
    email?.toLowerCase() == AppConstants.ownerEmail.toLowerCase();
