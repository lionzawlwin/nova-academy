/// Hand-written (non-Freezed, no build_runner needed) static content for
/// "Academic Year" course pathways -- a full 36-week, term/week/daily-lesson
/// structure layered *on top of* the existing per-grade curriculum banks
/// (`primary_curriculum_bank.dart` / `secondary_curriculum_bank.dart`),
/// not a replacement for them. Follows the exact same plain-Dart,
/// bilingual `*En`/`*My` convention every other bank in this directory
/// uses, and completion still flows through the existing
/// `markModuleCompleted`/`activeChildProvider` machinery via each daily
/// lesson's [DailyLessonDef.id] -- no Firestore schema changes needed.
///
/// Secondary 1 Computing's full 36-week, 9-term pathway (see
/// [secondary1ComputingPathway]) is now complete: Term 1 (Computing
/// Foundations) and Term 2 (Networks, the Internet & Data) proved the
/// pipeline end-to-end (data model, all four interaction types, gamified
/// path UI, persisted completion); Terms 3, 4, 5 and 7 built a
/// Programming Fundamentals arc from algorithms/flowcharts through
/// pseudocode variables and selection/iteration to real Python-style
/// code; Term 6 (Data Representation) and Term 8 (Digital Citizenship &
/// Online Safety) broke up that arc with breadth strands so a real
/// full-year course doesn't read as programming end-to-end; Term 9
/// (Computational Thinking & Your Own Project) closes the year by naming
/// the decomposition/abstraction/pattern-recognition skills used
/// implicitly throughout, then has students plan and build a program of
/// their own. Weeks 1-4 (Term 1) follow a deliberate Cambridge/Collins-
/// style spiral: Week 1 introduces hardware vs. software and
/// input/output/storage; Week 2 revisits storage at a deeper level
/// (CPU/RAM/motherboard -- processing vs. memory vs. storage); Week 3
/// revisits the hardware/software split from the software side (system
/// vs. application software); Week 4 applies both back to a practical
/// skill (organizing files/folders), reinforcing storage and software
/// concepts in a new context rather than introducing them once and
/// moving on. Weeks 5-8 (Term 2) continue the spiral outward: Week 5
/// introduces networks (LAN/WAN, wired/wireless); Week 6 narrows to the
/// specific internet service students already use day-to-day (the Web,
/// browsers, search engines); Week 7 revisits that same internet/network
/// territory through an online-safety lens; Week 8 closes the term by
/// revisiting Term 1 Week 2's storage/hardware content at a deeper level
/// -- how storage is actually made of bits and bytes. This spiral
/// pattern (revisit earlier strands at a deeper level in a new context,
/// rather than teach once and move on) continues across every later term
/// through Week 36.
///
/// Secondary 2 Computing (see [secondary2ComputingPathway]) is a separate,
/// independent pathway for Grade [Grade.secondary2] rather than more terms
/// grafted onto Secondary 1's own 36-week pathway. Term 1 (Weeks 1-4,
/// Lists and Arrays), Term 2 (Weeks 5-8, Functions and Procedures), Term
/// 3 (Weeks 9-12, Searching and Sorting Algorithms), and Term 4 (Weeks
/// 13-16, Boolean Logic and Truth Tables) are authored so far, picking up
/// directly from Secondary 1's variables/selection/loops foundation:
/// Term 1 extends that into lists, Term 2 extends it further into
/// functions/procedures, parameters/arguments, and return values
/// (closing with a capstone week that combines a function, a list
/// parameter, a loop with an accumulator, an if selection, and a return
/// statement in one program), and Term 3 applies those function/
/// parameter/return-value skills to algorithm design over lists --
/// linear search, binary search, and bubble sort -- closing with a
/// capstone week that chains a sorting function's return value into a
/// searching function's parameter in one combined program. Term 4 is a
/// deliberate breadth strand breaking up that programming arc: it
/// revisits the true/false concept Secondary 1 already touched, names the
/// AND/OR/NOT operators explicitly, introduces truth tables, ties
/// compound Boolean conditions back into Secondary 1's if-statements and
/// this pathway's own Term 2 functions, and closes with a capstone week
/// combining Boolean logic with functions and lists at once.
library;

import '../../../models/child_model.dart';
import '../interactive_content_models.dart';
import '../mock_quiz_data.dart';

/// Which interactive screen a [DailyLessonDef] plays through.
enum LessonKind { quiz, dragMatch, sorting, reading, photoGuess }

/// One bite-sized daily node on a [CourseWeekDef]'s path (Duolingo-style
/// unit). Exactly one of [quizQuestions]/[dragMatchPairs]/[sortingActivity]/
/// [readingPassage]/[photoGuessQuestions] is populated, matching [kind].
class DailyLessonDef {
  const DailyLessonDef({
    required this.id,
    required this.dayNumber,
    required this.titleEn,
    required this.titleMy,
    required this.kind,
    this.xpReward = 10,
    this.isRecapDay = false,
    this.quizQuestions = const [],
    this.dragMatchPairs = const [],
    this.sortingActivity,
    this.readingPassage,
    this.photoGuessQuestions = const [],
  });

  final String id;
  final int dayNumber; // 1-5, Mon-Fri
  final String titleEn;
  final String titleMy;
  final LessonKind kind;
  final int xpReward;

  /// Friday-style lighter/recap day -- shown with a distinct icon on the
  /// week path, same content mechanics as a regular quiz day otherwise.
  final bool isRecapDay;

  final List<QuizQuestion> quizQuestions;
  final List<DragMatchPair> dragMatchPairs;
  final SortingActivity? sortingActivity;
  final ReadingPassageModel? readingPassage;

  /// Task 6's "Guess the Photo" rounds -- see [PhotoGuessQuestion]'s doc
  /// comment. Empty in every lesson authored so far: no lesson has been
  /// wired to [LessonKind.photoGuess] yet, since that requires a batch of
  /// properly licensed/attributed images to exist first (see
  /// `photo_guess_bank.dart`'s authoring note).
  final List<PhotoGuessQuestion> photoGuessQuestions;
}

/// One week (Duolingo-style "unit") within a [CourseTermDef].
class CourseWeekDef {
  const CourseWeekDef({
    required this.id,
    required this.weekNumber,
    required this.titleEn,
    required this.titleMy,
    required this.xpReward,
    required this.dailyLessons,
    this.isBossWeek = false,
  });

  final String id;
  final int weekNumber; // 1-36 across the whole pathway
  final String titleEn;
  final String titleMy;
  final int xpReward; // bonus awarded once every daily lesson is complete
  final bool isBossWeek;
  final List<DailyLessonDef> dailyLessons;
}

/// One term (Coursera-style milestone) within a [CoursePathwayDef].
class CourseTermDef {
  const CourseTermDef({
    required this.id,
    required this.termNumber,
    required this.titleEn,
    required this.titleMy,
    required this.certificateTitleEn,
    required this.certificateTitleMy,
    required this.weeks,
  });

  final String id;
  final int
  termNumber; // 1-9 across the full 36-week pathway (each term is a short thematic/certificate milestone, not a literal 12-week school term)
  final String titleEn;
  final String titleMy;
  final String certificateTitleEn;
  final String certificateTitleMy;
  final List<CourseWeekDef> weeks;
}

/// Top-level container: one full academic-year course for one subject at
/// one grade.
class CoursePathwayDef {
  const CoursePathwayDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.totalWeeks,
    required this.terms,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int totalWeeks; // 36 for a full year, even while only Week 1 exists
  final List<CourseTermDef> terms;
}
