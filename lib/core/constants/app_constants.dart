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

  /// One document per completed lesson (quiz/drag-match/sorting/reading),
  /// not per question -- see docs/firestore_schema.md's `LessonAttempts`
  /// section for the write-volume rationale.
  static const String lessonAttemptsCollection = 'LessonAttempts';

  /// Append-only revenue ledger -- one document per subscription lifecycle
  /// transition (purchase/renewal/cancellation/refund/grant/revoke). See
  /// `docs/firestore_schema.md`'s `BillingEvents` section.
  static const String billingEventsCollection = 'BillingEvents';

  /// One aggregated document per user per calendar day, tracking estimated
  /// Firestore read/write volume against subscription tier -- the FinOps
  /// cost-vs-tier telemetry signal. See `docs/firestore_schema.md`'s
  /// `UsageTelemetry` section.
  static const String usageTelemetryCollection = 'UsageTelemetry';

  /// App display name.
  static const String appName = 'Nova Academy';
}

/// Returns true when [email] belongs to the hardcoded platform owner.
///
/// Case-insensitive and null-safe so it can be called directly on
/// `FirebaseAuth.instance.currentUser?.email` without extra null checks.
bool isOwnerEmail(String? email) =>
    email?.toLowerCase() == AppConstants.ownerEmail.toLowerCase();
