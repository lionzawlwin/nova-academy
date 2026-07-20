import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/lessons/nursery_kg_activity_bank.dart';
import '../../features/lessons/primary_curriculum_bank.dart';
import '../../features/lessons/secondary_curriculum_bank.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../models/user_model.dart';
import '../constants/app_constants.dart';

/// Hand-bumped content version for the seed/curriculum data [seedDatabase]
/// writes.
///
/// Whoever meaningfully changes the seed data -- new curriculum bank
/// content, changed mock users/children/modules -- bumps this string as
/// part of that change. `curriculumAutoSyncProvider`
/// (`lib/providers/curriculum_sync_provider.dart`) compares this against
/// the version last persisted to `SharedPreferences` on the owner's device
/// to decide whether a background re-sync is needed; a plain string bump
/// is simpler and more predictable than a runtime content hash (e.g. a
/// Burmese typo fix doesn't silently trigger a resync of everyone's next
/// login).
const String seedContentVersion = 'v1';

/// Fixed (not auto-generated) document ids for every demo/mock document
/// [seedDatabase] writes.
///
/// Using stable ids -- rather than `collection().doc()` auto-ids -- makes
/// seeding **idempotent**: tapping "Seed Demo Data" a second time overwrites
/// the same handful of documents instead of piling up duplicates, so it's
/// safe to re-run from the Owner Admin panel as often as needed without
/// burning through the Spark free-tier daily write quota.
class MockSeedIds {
  MockSeedIds._();

  static const String parent = 'mock-parent-01';
  static const String teacherPrimary = 'mock-teacher-primary';
  static const String teacherSecondary = 'mock-teacher-secondary';

  static const String childAlpha = 'mock-child-alpha';
  static const String childBeta = 'mock-child-beta';
  static const String childGamma = 'mock-child-gamma';
  static const String childDelta = 'mock-child-delta';

  static const String moduleAlphaFractions = 'mock-module-alpha-fractions';
  static const String moduleAlphaScienceQuiz = 'mock-module-alpha-science-quiz';
  static const String moduleBetaBasicMath = 'mock-module-beta-basic-math';
  static const String moduleBetaMemoryMatch = 'mock-module-beta-memory-match';
  static const String moduleGammaShapes = 'mock-module-gamma-shapes';
  static const String moduleGammaPhonics = 'mock-module-gamma-phonics';
  static const String moduleDeltaKinematics = 'mock-module-delta-kinematics';
}

/// Counts returned by [seedDatabase] so a caller (e.g. the Owner Admin
/// panel) can show a precise confirmation instead of a generic "done".
class SeedSummary {
  const SeedSummary({
    required this.usersWritten,
    required this.childrenWritten,
    required this.modulesWritten,
  });

  final int usersWritten;
  final int childrenWritten;
  final int modulesWritten;

  int get totalWritten => usersWritten + childrenWritten + modulesWritten;
}

/// Seeds Nova Academy's Firestore database with a small, coherent set of
/// demo/mock data using a single batched write.
///
/// This project runs on the Firebase **Spark (free) plan** with no Cloud
/// Functions / Node Admin SDK, so seeding happens entirely through the
/// client Firestore SDK -- this function is meant to be invoked from an
/// authenticated **owner** session (see the "Seed Demo Data" button on
/// `OwnerAdminScreen`), which the security rules in `firestore.rules` grant
/// full read/write access to every collection touched here.
///
/// Creates:
/// - A mock parent (`Users`, role `parent`) linked to all four demo
///   students.
/// - Two mock teachers (`Users`, role `teacher`): one linked to the
///   younger three students, one linked to the IGCSE student -- exercising
///   both the "teacher sees a subset of children" path and the
///   `linkedStudents`-driven Firestore rule.
/// - Four demo `Children`, one per grade band, each with a `parentId`
///   pointing at the mock parent: Student Alpha (Year 4), Student Beta
///   (Year 1), Student Gamma (Nursery), Student Delta (IGCSE).
/// - Seven `LearningModules`, two-to-one per student, covering their grade
///   and matching the subject-key convention the home screens already use
///   (lowercase strings mirroring the `subject*` ARB key roots -- see
///   `lib/features/home/primary_home_screen.dart` /
///   `secondary_igcse_home_screen.dart`).
///
/// Every module's `titleEn`/`titleMy`/`descriptionEn`/`descriptionMy` is
/// populated with real (non-placeholder) English and Burmese text, per the
/// project's strict bilingual requirement. `ChildModel.aliasName` is a
/// single field (no bilingual variant exists in the current schema), so
/// student aliases use the language-neutral proper nouns this phase's spec
/// names them by ("Student Alpha", etc.) rather than a translated string.
Future<SeedSummary> seedDatabase(FirebaseFirestore db) async {
  final users = mockSeedUsers();
  final children = mockSeedChildren();
  final modules = [
    ...mockSeedLearningModules(),
    ...mockSeedNurseryKgModules(),
    ...mockSeedPrimaryCurriculumModules(),
    ...mockSeedSecondaryCurriculumModules(),
  ];

  final batch = db.batch();

  for (final user in users) {
    final ref = db.collection(AppConstants.usersCollection).doc(user.id);
    batch.set(ref, user.toJson()..remove('id'));
  }
  for (final child in children) {
    final ref = db.collection(AppConstants.childrenCollection).doc(child.id);
    batch.set(ref, child.toJson()..remove('id'));
  }
  for (final module in modules) {
    final ref = db
        .collection(AppConstants.learningModulesCollection)
        .doc(module.id);
    batch.set(ref, module.toJson()..remove('id'));
  }

  await batch.commit();

  return SeedSummary(
    usersWritten: users.length,
    childrenWritten: children.length,
    modulesWritten: modules.length,
  );
}

/// The mock `Users` documents [seedDatabase] writes.
///
/// Exposed as a standalone, Firestore-free function (rather than inlined
/// into [seedDatabase]) so the seed data itself -- ids, role assignments,
/// `linkedStudents` cross-references -- can be unit tested without a real
/// or emulated Firestore instance. See `test/seed_service_test.dart`.
List<UserModel> mockSeedUsers() {
  return const [
    UserModel(
      id: MockSeedIds.parent,
      email: 'demo.parent@novaacademy.mock',
      role: UserRole.parent,
      subscriptionTier: SubscriptionTier.premium,
      linkedStudents: [
        MockSeedIds.childAlpha,
        MockSeedIds.childBeta,
        MockSeedIds.childGamma,
        MockSeedIds.childDelta,
      ],
    ),
    UserModel(
      id: MockSeedIds.teacherPrimary,
      email: 'demo.teacher.primary@novaacademy.mock',
      role: UserRole.teacher,
      subscriptionTier: SubscriptionTier.free,
      linkedStudents: [
        MockSeedIds.childAlpha,
        MockSeedIds.childBeta,
        MockSeedIds.childGamma,
      ],
    ),
    UserModel(
      id: MockSeedIds.teacherSecondary,
      email: 'demo.teacher.secondary@novaacademy.mock',
      role: UserRole.teacher,
      subscriptionTier: SubscriptionTier.free,
      linkedStudents: [MockSeedIds.childDelta],
    ),
  ];
}

/// The mock `Children` documents [seedDatabase] writes.
List<ChildModel> mockSeedChildren() {
  return const [
    ChildModel(
      id: MockSeedIds.childAlpha,
      parentId: MockSeedIds.parent,
      aliasName: 'Student Alpha',
      currentGrade: Grade.year4,
      totalStars: 40,
    ),
    ChildModel(
      id: MockSeedIds.childBeta,
      parentId: MockSeedIds.parent,
      aliasName: 'Student Beta',
      currentGrade: Grade.year1,
      totalStars: 18,
    ),
    ChildModel(
      id: MockSeedIds.childGamma,
      parentId: MockSeedIds.parent,
      aliasName: 'Student Gamma',
      currentGrade: Grade.nursery,
      totalStars: 6,
    ),
    ChildModel(
      id: MockSeedIds.childDelta,
      parentId: MockSeedIds.parent,
      aliasName: 'Student Delta',
      currentGrade: Grade.igcse,
      totalStars: 65,
    ),
  ];
}

/// The mock `LearningModules` documents [seedDatabase] writes.
///
/// `subject` values are lowercase and mirror the `subject*` ARB key roots
/// (`fractions`, `science`, `math`, `generalknowledge`, `phonics`,
/// `physics`) so the existing home-screen icon/label lookups
/// (`_iconForSubject`, `_labelFor`) recognize them without any change.
List<LearningModuleModel> mockSeedLearningModules() {
  return const [
    // Student Alpha -- Year 4.
    LearningModuleModel(
      id: MockSeedIds.moduleAlphaFractions,
      subject: 'fractions',
      grade: Grade.year4,
      contentType: 'interactive',
      titleEn: 'Fractions Made Fun',
      titleMy: 'အပိုင်းကိန်း ပျော်ရွှင်စွာ သင်ယူခြင်း',
      descriptionEn:
          'Slice pizzas and cakes to master halves, thirds, and quarters.',
      descriptionMy:
          'ပီဇာနှင့် ကိတ်များကို ခွဲခြမ်းပြီး ထက်ဝက်၊ သုံးပုံတစ်ပုံနှင့် လေးပုံတစ်ပုံများကို ကျွမ်းကျင်အောင် လေ့လာပါ။',
      starsReward: 15,
    ),
    LearningModuleModel(
      id: MockSeedIds.moduleAlphaScienceQuiz,
      subject: 'science',
      grade: Grade.year4,
      contentType: 'quiz',
      titleEn: 'Science Explorer Quiz',
      titleMy: 'သိပ္ပံ စူးစမ်းလေ့လာသူ ပဟေဠိ',
      descriptionEn:
          'Test what you know about plants, animals, and the water cycle.',
      descriptionMy:
          'အပင်များ၊ တိရစ္ဆာန်များနှင့် ရေစက်ဝန်းအကြောင်း သင့်အသိပညာကို စမ်းသပ်ကြည့်ပါ။',
      starsReward: 10,
    ),

    // Student Beta -- Year 1.
    LearningModuleModel(
      id: MockSeedIds.moduleBetaBasicMath,
      subject: 'math',
      grade: Grade.year1,
      contentType: 'game',
      titleEn: 'Counting Carnival',
      titleMy: 'ရေတွက်ခြင်း ပွဲတော်',
      descriptionEn:
          'Add and subtract with cheerful carnival characters up to 20.',
      descriptionMy:
          'ပျော်ရွှင်ဖွယ် ပွဲတော်ဇာတ်ကောင်များနှင့်အတူ ၂၀ အထိ ပေါင်းနှုတ်ခြင်းကို လေ့ကျင့်ပါ။',
      starsReward: 10,
    ),
    LearningModuleModel(
      id: MockSeedIds.moduleBetaMemoryMatch,
      subject: 'generalknowledge',
      grade: Grade.year1,
      contentType: 'game',
      titleEn: 'Memory Match',
      titleMy: 'မှတ်ဉာဏ် တွဲစုံရှာဂိမ်း',
      descriptionEn:
          'Flip cards and find matching pairs to sharpen memory and focus.',
      descriptionMy:
          'ကတ်များကို လှန်ပြီး တွဲစုံရှာကာ မှတ်ဉာဏ်နှင့် အာရုံစူးစိုက်မှုကို ပြင်ဆင်ပါ။',
      starsReward: 8,
    ),

    // Student Gamma -- Nursery.
    LearningModuleModel(
      id: MockSeedIds.moduleGammaShapes,
      subject: 'math',
      grade: Grade.nursery,
      contentType: 'interactive',
      titleEn: 'Shape Drop',
      titleMy: 'ပုံသဏ္ဌာန် ချထားခြင်း',
      descriptionEn:
          'Drag and drop circles, squares, and triangles into their matching homes.',
      descriptionMy:
          'စက်ဝိုင်း၊ လေးထောင့်ကွက်နှင့် တြိဂံများကို သူတို့နေရာသို့ ဆွဲယူချထားပါ။',
      starsReward: 6,
    ),
    LearningModuleModel(
      id: MockSeedIds.moduleGammaPhonics,
      subject: 'phonics',
      grade: Grade.nursery,
      contentType: 'game',
      titleEn: 'ABC Sounds',
      titleMy: 'အက္ခရာသံများ',
      descriptionEn:
          'Tap letters and hear their sounds to build first reading skills.',
      descriptionMy:
          'အက္ခရာများကို နှိပ်ပြီး အသံများကို ကြားနာကာ ပထမဆုံး စာဖတ်ကျွမ်းကျင်မှုကို တည်ဆောက်ပါ။',
      starsReward: 6,
    ),

    // Student Delta -- IGCSE.
    LearningModuleModel(
      id: MockSeedIds.moduleDeltaKinematics,
      subject: 'physics',
      grade: Grade.igcse,
      contentType: 'video',
      titleEn: 'Kinematics Basics',
      titleMy: 'ရွေ့လျားမှုသိပ္ပံ အခြေခံများ',
      descriptionEn:
          'Explore speed, velocity, and acceleration through real-world motion problems.',
      descriptionMy:
          'လက်တွေ့ဖြစ်ပျက်နေသော ရွေ့လျားမှု ပြဿနာများမှတစ်ဆင့် အလျင်၊ ဝေဂနှင့် အရှိန်မြှင့်မှုကို လေ့လာပါ။',
      starsReward: 20,
    ),
  ];
}

/// The Nursery + KG `LearningModules` documents [seedDatabase] writes,
/// derived from [nurseryKgActivityBank] -- the actual playable content
/// ([NurseryActivityDef.items]) is intentionally dropped here and never
/// written to Firestore (see `docs/firestore_schema.md`'s "quiz question
/// content lives in Dart, not Firestore" design note); only catalog
/// metadata is persisted.
List<LearningModuleModel> mockSeedNurseryKgModules() {
  return [
    for (final activity in nurseryKgActivityBank)
      LearningModuleModel(
        id: activity.id,
        subject: activity.subject,
        grade: activity.grade,
        contentType: activity.contentType,
        titleEn: activity.titleEn,
        titleMy: activity.titleMy,
        descriptionEn: activity.descriptionEn,
        descriptionMy: activity.descriptionMy,
        starsReward: activity.starsReward,
      ),
  ];
}

/// The Year 1-6 `LearningModules` documents [seedDatabase] writes, derived
/// from [primaryCurriculumBank] -- the actual quiz questions
/// ([PrimaryActivityDef.questions]) are intentionally dropped here and
/// never written to Firestore (same "content lives in Dart, not
/// Firestore" design note as [mockSeedNurseryKgModules]); only catalog
/// metadata is persisted.
List<LearningModuleModel> mockSeedPrimaryCurriculumModules() {
  return [
    for (final activity in primaryCurriculumBank)
      LearningModuleModel(
        id: activity.id,
        subject: activity.subject,
        grade: activity.grade,
        contentType: activity.contentType,
        titleEn: activity.titleEn,
        titleMy: activity.titleMy,
        descriptionEn: activity.descriptionEn,
        descriptionMy: activity.descriptionMy,
        starsReward: activity.starsReward,
      ),
  ];
}

/// The Secondary/IGCSE `LearningModules` documents [seedDatabase] writes,
/// derived from [secondaryCurriculumBank] -- the actual quiz questions
/// ([SecondaryActivityDef.questions]) are intentionally dropped here and
/// never written to Firestore (same "content lives in Dart, not
/// Firestore" design note as [mockSeedNurseryKgModules] and
/// [mockSeedPrimaryCurriculumModules]); only catalog metadata is
/// persisted.
List<LearningModuleModel> mockSeedSecondaryCurriculumModules() {
  return [
    for (final activity in secondaryCurriculumBank)
      LearningModuleModel(
        id: activity.id,
        subject: activity.subject,
        grade: activity.grade,
        contentType: activity.contentType,
        titleEn: activity.titleEn,
        titleMy: activity.titleMy,
        descriptionEn: activity.descriptionEn,
        descriptionMy: activity.descriptionMy,
        starsReward: activity.starsReward,
      ),
  ];
}
