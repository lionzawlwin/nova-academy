/// Hand-written (non-Freezed, no build_runner needed) content models for
/// the Primary/Secondary "fill in the blank" and "drag to match" lesson
/// types -- the same plain-Dart, bilingual `*En`/`*My` paired-field
/// convention `QuizQuestion` (`mock_quiz_data.dart`) and `MatchPairItem`
/// (`nursery_kg_activity_bank.dart`) already use.
library;

import 'mock_quiz_data.dart' show QuizQuestion;

/// One fill-in-the-blank question for [FillInTheBlankScreen]
/// (`fill_in_blank_screen.dart`).
///
/// [sentenceEn]/[sentenceMy] must each contain exactly one literal `"___"`
/// token marking where the blank goes. [optionsEn]/[optionsMy] are a
/// tappable word bank (not free text) the learner picks from to fill that
/// blank -- same-length/same-order bilingual convention as
/// [QuizQuestion.optionsEn]/[QuizQuestion.optionsMy], so [correctIndex]
/// indexes into both simultaneously.
class FillBlankQuestion {
  const FillBlankQuestion({
    required this.sentenceEn,
    required this.sentenceMy,
    required this.optionsEn,
    required this.optionsMy,
    required this.correctIndex,
    this.hintsEn = const [],
    this.hintsMy = const [],
  }) : assert(correctIndex >= 0, 'correctIndex must be a valid option index');
  // Note: optionsEn/optionsMy are required to be the same length (and in
  // the same order) by convention, mirroring QuizQuestion's same caveat --
  // a `.length` comparison isn't a supported const-constructor assert
  // expression, so it isn't enforced at compile time.

  final String sentenceEn;
  final String sentenceMy;
  final List<String> optionsEn;
  final List<String> optionsMy;
  final int correctIndex;

  /// Scaffolded hints shown one at a time, in order, on each successive
  /// wrong attempt -- i.e. `hintsEn.length` is how many extra attempts a
  /// student gets (one hint revealed per wrong answer) before the correct
  /// answer is finally revealed. Defaults to `const []` so a question with
  /// no authored hints falls straight back to the old instant-reveal
  /// behavior.
  ///
  /// [hintsEn]/[hintsMy] must be the same length, following the same
  /// bilingual paired-field convention as [optionsEn]/[optionsMy] (see the
  /// same not-enforced-at-compile-time caveat above).
  ///
  /// Deliberately a plain `List<String>` (JSON-native) rather than a richer
  /// type, so this shape needs no translation if question content is ever
  /// migrated from these compiled Dart literals into Firestore-ingested
  /// JSON later.
  final List<String> hintsEn;
  final List<String> hintsMy;
}

/// One draggable/droppable vocabulary pair for [DragMatchScreen]
/// (`drag_match_screen.dart`) -- e.g. a coding term dragged onto its
/// definition. Deliberately text-only (no emoji field, unlike
/// [MatchPairItem]): this is Primary/Secondary vocabulary-style matching,
/// not Nursery/KG picture-matching.
class DragMatchPair {
  const DragMatchPair({
    required this.id,
    required this.termEn,
    required this.termMy,
    required this.matchEn,
    required this.matchMy,
    required this.colorValue,
  });

  final String id;

  /// The draggable tile's label.
  final String termEn;
  final String termMy;

  /// The drop-target tile's label -- what [termEn]/[termMy] matches to.
  final String matchEn;
  final String matchMy;

  /// An accent color (like [MatchPairItem.colorValue]) distinguishing this
  /// pair's tiles from the others on screen.
  final int colorValue;

  String term(String languageCode) => languageCode == 'my' ? termMy : termEn;
  String match(String languageCode) => languageCode == 'my' ? matchMy : matchEn;
}

/// One item to be dragged into its correct labeled bucket for
/// [SortingScreen] (`sorting_screen.dart`) -- e.g. "Mouse" sorted into the
/// "Input" bucket. Unlike [DragMatchPair] (one draggable term : one unique
/// drop-target tile), a sorting activity has a small fixed set of shared
/// buckets that many items sort into, so [correctBucketEn]/[correctBucketMy]
/// name the bucket rather than pointing at a per-item target.
class SortingItem {
  const SortingItem({
    required this.id,
    required this.labelEn,
    required this.labelMy,
    required this.correctBucketEn,
    required this.correctBucketMy,
  });

  final String id;
  final String labelEn;
  final String labelMy;

  /// Must exactly match one entry in the owning [SortingActivity.bucketsEn]
  /// (respectively [SortingActivity.bucketsMy]) by convention.
  final String correctBucketEn;
  final String correctBucketMy;

  String label(String languageCode) => languageCode == 'my' ? labelMy : labelEn;
  String correctBucket(String languageCode) =>
      languageCode == 'my' ? correctBucketMy : correctBucketEn;
}

/// A full "sort these into buckets" activity: a fixed, ordered set of
/// bucket labels plus the items to be sorted among them, for
/// [SortingScreen].
class SortingActivity {
  const SortingActivity({
    required this.bucketsEn,
    required this.bucketsMy,
    required this.items,
  });

  /// Bucket labels, same order/length as [bucketsMy] -- every
  /// [SortingItem.correctBucketEn] in [items] must match one of these.
  final List<String> bucketsEn;
  final List<String> bucketsMy;
  final List<SortingItem> items;

  String bucket(int index, String languageCode) =>
      languageCode == 'my' ? bucketsMy[index] : bucketsEn[index];
}

/// A short interactive reading passage plus a comprehension check for
/// [ReadingScreen] (`reading_screen.dart`) -- the "Oxford Reading
/// Buddy"-style interaction type: read a passage, then answer questions
/// about it. Reuses [QuizQuestion] for the comprehension check rather than
/// inventing a new question shape.
class ReadingPassageModel {
  const ReadingPassageModel({
    required this.titleEn,
    required this.titleMy,
    required this.passageEn,
    required this.passageMy,
    required this.comprehensionQuestions,
  });

  final String titleEn;
  final String titleMy;
  final String passageEn;
  final String passageMy;
  final List<QuizQuestion> comprehensionQuestions;
}

/// One "Guess the Photo" round for [PhotoGuessScreen]
/// (`photo_guess_screen.dart`, Task 6): a bundled image plus a
/// multiple-choice prompt about it -- e.g. a landmark photo with "Which
/// country is this in?".
///
/// [imageAssetPath] is a bundled Flutter asset path (declared under
/// `flutter: assets:` in `pubspec.yaml`), never a network URL -- this app
/// has no image-hosting dependency (no `firebase_storage`, no third-party
/// image API), so every photo ships inside the app binary.
///
/// ## Authoring bar -- read before adding a round
///
/// A photo only belongs in a [DailyLessonDef.photoGuessQuestions] list
/// once all of the following are true for it: (1) it is genuinely
/// public-domain, CC0, or CC-BY/CC-BY-SA licensed for commercial
/// redistribution (Wikimedia Commons' PD/CC0 categories are the
/// best-fit source for General Knowledge/Geography/Science/History
/// content); (2) its attribution requirement, if the license has one, is
/// recorded in [attributionEn]/[attributionMy] -- never silently dropped;
/// (3) the image file has actually been added under `assets/photo_guess/`
/// and `pubspec.yaml`'s asset list. None of that can be done responsibly
/// by generating plausible-looking entries -- it requires sourcing and
/// checking each image individually, which is why no [DailyLessonDef]
/// is wired to [LessonKind.photoGuess] yet.
class PhotoGuessQuestion {
  const PhotoGuessQuestion({
    required this.id,
    required this.imageAssetPath,
    required this.promptEn,
    required this.promptMy,
    required this.optionsEn,
    required this.optionsMy,
    required this.correctIndex,
    this.attributionEn,
    this.attributionMy,
  });

  final String id;
  final String imageAssetPath;
  final String promptEn;
  final String promptMy;

  /// Same-length/same-order bilingual convention as
  /// [QuizQuestion.optionsEn]/[QuizQuestion.optionsMy].
  final List<String> optionsEn;
  final List<String> optionsMy;
  final int correctIndex;

  /// Photo credit line shown small beneath the image, e.g. "Photo: Jane
  /// Doe / Wikimedia Commons, CC BY-SA 4.0" -- required by attribution
  /// licenses (the CC-BY family); `null` for public-domain/CC0 sources
  /// that impose no attribution requirement. Never omit this for an image
  /// whose license requires it.
  final String? attributionEn;
  final String? attributionMy;

  String prompt(String languageCode) =>
      languageCode == 'my' ? promptMy : promptEn;
  String? attribution(String languageCode) =>
      languageCode == 'my' ? attributionMy : attributionEn;
}
