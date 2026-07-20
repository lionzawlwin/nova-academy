/// Hand-written (non-Freezed, no build_runner needed) content models for
/// the Primary/Secondary "fill in the blank" and "drag to match" lesson
/// types -- the same plain-Dart, bilingual `*En`/`*My` paired-field
/// convention `QuizQuestion` (`mock_quiz_data.dart`) and `MatchPairItem`
/// (`nursery_kg_activity_bank.dart`) already use.
library;

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
