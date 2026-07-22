import 'nursery_activity_kind.dart';
import 'nursery_kg_activity_bank.dart';
import 'nursery_kg_flashcards_bank.dart';
import 'nursery_kg_listening_bank.dart';
import 'nursery_kg_memory_bank.dart';
import 'nursery_kg_rhymes_bank.dart';
import 'nursery_kg_storytelling_bank.dart';

/// Every Nursery/KG activity across all six banks (picture-matching plus
/// the five newer widget types), flattened into one list of lightweight,
/// kind-tagged [NurseryActivitySummary]s. `NurseryKgHomeScreen._openLesson`
/// and `NurseryActivityBrowserScreen` both search this instead of any
/// single bank directly, so a subject tile can surface activities of any
/// kind for the tapped grade/subject rather than only picture-matching;
/// `seed_service.dart`'s `mockSeedNurseryKgModules()` also derives the
/// Firestore `LearningModules` catalog metadata straight from this list.
List<NurseryActivitySummary> allNurseryActivitySummaries() => [
  for (final a in nurseryKgActivityBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.pictureMatching,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.items.isNotEmpty ? a.items.first.emoji : '⭐',
    ),
  for (final a in nurseryKgListeningBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.listening,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.emoji,
    ),
  for (final a in nurseryKgMemoryBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.memory,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.emoji,
    ),
  for (final a in nurseryKgFlashcardsBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.flashcards,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.emoji,
    ),
  for (final a in nurseryKgStorytellingBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.storytelling,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.emoji,
    ),
  for (final a in nurseryKgRhymesBank)
    NurseryActivitySummary(
      id: a.id,
      subject: a.subject,
      grade: a.grade,
      kind: NurseryActivityKind.rhymes,
      titleEn: a.titleEn,
      titleMy: a.titleMy,
      descriptionEn: a.descriptionEn,
      descriptionMy: a.descriptionMy,
      starsReward: a.starsReward,
      emoji: a.emoji,
    ),
];
