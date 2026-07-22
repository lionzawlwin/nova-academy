import '../../models/child_model.dart';

/// Discriminates which Nursery/KG interactive widget an activity plays as.
/// [pictureMatching] is the original drag-and-drop game
/// (`nursery_lesson_screen.dart`); the other five back the "1-Year Full
/// Course" widget architecture: Listening Comprehension (audio-driven),
/// Memory Challenge (card-flip), Digital Flashcards, Interactive
/// Storytelling, and Singing/Rhymes.
enum NurseryActivityKind {
  pictureMatching,
  listening,
  memory,
  flashcards,
  storytelling,
  rhymes,
}

/// The `LearningModuleModel.contentType` string [seedDatabase] writes for
/// each [kind] -- arbitrary catalog metadata (matching the existing loose
/// `'interactive'`/`'game'`/`'video'` convention in `seed_service.dart`),
/// never read by routing/dispatch -- that always switches on
/// [NurseryActivityKind] itself. See `mockSeedNurseryKgModules()`.
String contentTypeForNurseryKind(NurseryActivityKind kind) {
  switch (kind) {
    case NurseryActivityKind.pictureMatching:
      return 'interactive';
    case NurseryActivityKind.listening:
      return 'listening';
    case NurseryActivityKind.memory:
      return 'memory';
    case NurseryActivityKind.flashcards:
      return 'flashcards';
    case NurseryActivityKind.storytelling:
      return 'storytelling';
    case NurseryActivityKind.rhymes:
      return 'rhymes';
  }
}

/// One lightweight, kind-tagged catalog entry, used to search across every
/// Nursery/KG activity bank (picture-matching plus the five newer widget
/// types) by grade + subject without every caller needing to know each
/// bank's own item shape. See `nursery_activity_index.dart`.
class NurseryActivitySummary {
  const NurseryActivitySummary({
    required this.id,
    required this.subject,
    required this.grade,
    required this.kind,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
  });

  final String id;
  final String subject;
  final Grade grade;
  final NurseryActivityKind kind;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int starsReward;

  /// A single representative emoji shown on browser/index tiles -- every
  /// new bank's def carries an explicit `emoji` field for this rather than
  /// deriving one from nested items, since some kinds (storytelling,
  /// rhymes) don't have a natural "first item" to borrow one from.
  final String emoji;

  String title(String languageCode) => languageCode == 'my' ? titleMy : titleEn;
}
