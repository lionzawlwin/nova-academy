// ignore_for_file: avoid_print
//
// Nova Academy — seeding entry point (documentation stub).
//
// WHY THIS FILE IS A STUB, NOT A RUNNABLE SCRIPT
// ------------------------------------------------------------------------
// Nova Academy runs entirely on the Firebase **Spark (free) plan** with no
// Cloud Functions and no Node.js/Admin SDK anywhere in the stack -- the
// project is pure Flutter + the client Firestore SDK. The Firestore Admin
// SDK (the thing a typical `tool/seed.js`/`bin/seed.dart` "just run this
// script" workflow relies on for unauthenticated, rules-bypassing writes)
// requires a service account and a paid-tier-adjacent backend runtime,
// which is explicitly out of scope for this project.
//
// Because of that constraint, seeding is implemented as a normal,
// rules-respecting **in-app service** instead:
//
//   lib/core/services/seed_service.dart
//     - `Future<SeedSummary> seedDatabase(FirebaseFirestore db)`
//     - `mockSeedUsers()`, `mockSeedChildren()`, `mockSeedLearningModules()`
//       (pure data, no Firestore dependency -- see test/seed_service_test.dart)
//
// and the primary way to invoke it is the **"Seed Demo Data" button** on
// the Owner Admin panel:
//
//   lib/features/dashboard/owner_admin_screen.dart  (_SeedDemoDataCard)
//
// That button is only ever rendered for the hardcoded owner account
// (see AppConstants.ownerEmail / isOwnerEmail), and firestore.rules grants
// that account full read/write access to Users, Children, and
// LearningModules -- so seeding from inside the running app is both the
// simplest AND the most secure option available on this stack: no service
// account key to leak, no separate CI/CLI auth flow to maintain, and the
// exact same security rules apply to the seeder as to every other write
// the app makes.
//
// HOW TO SEED IN PRACTICE
// ------------------------------------------------------------------------
// 1. Day-to-day / demoing: run the app, sign in as the owner
//    (lionzawlwin@gmail.com), go to the Owner Admin panel, tap
//    "Seed Demo Data". Safe to tap more than once -- every document
//    `seedDatabase` writes uses a fixed id (see `MockSeedIds` in
//    seed_service.dart), so re-running overwrites the same demo docs
//    instead of duplicating them.
//
// 2. Dev/test context without launching the full app UI: call
//    `seedDatabase(firestore)` directly against a **Firebase Local
//    Emulator Suite** Firestore instance (`firebase emulators:start
//    --only firestore`, then point `FirebaseFirestore.instance` at it via
//    `useFirestoreEmulator(...)`) from a small throwaway
//    `flutter test`/integration harness, or from a temporary debug button
//    during development. `seedDatabase` takes a `FirebaseFirestore`
//    instance as its only parameter specifically so callers are free to
//    point it at an emulator instead of production.
//
// 3. The seed *data itself* (ids, role/linkedStudents cross-references,
//    bilingual title/description completeness) is unit tested without any
//    Firestore instance at all -- see test/seed_service_test.dart, which
//    exercises `mockSeedUsers()` / `mockSeedChildren()` /
//    `mockSeedLearningModules()` directly.
//
// This file intentionally has no `main()` that touches Firebase -- running
// `dart run tool/seed_database.dart` is not a supported workflow. It exists
// purely so this explanation lives next to the code the way a
// `tool/seed.*` script conventionally would.
void main() {
  print(
    'Nova Academy has no standalone seed script: this Spark-plan, '
    'client-only project seeds Firestore from inside the running app.\n'
    'Sign in as the owner (lionzawlwin@gmail.com) and use the '
    '"Seed Demo Data" button on the Owner Admin panel instead.\n'
    'See the doc comment at the top of this file for emulator/test '
    'options.',
  );
}
