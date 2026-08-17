/// Barrel file: re-exports every course-pathway subject file plus the
/// shared registry ([allCoursePathways], [courseDailyLessonById]).
/// Content lives in `course_pathways/` split by subject -- see
/// `course_pathways/course_pathways_core.dart` for the shared
/// [DailyLessonDef]/[CourseWeekDef]/[CourseTermDef]/[CoursePathwayDef]
/// model classes every subject file builds on.
library;

export 'course_pathways/course_pathways_core.dart';
export 'course_pathways/course_pathways_mathematics.dart';
export 'course_pathways/course_pathways_science.dart';
export 'course_pathways/course_pathways_english.dart';
export 'course_pathways/course_pathways_computing.dart';
export 'course_pathways/course_pathways_humanities.dart';
export 'course_pathways/course_pathways_global_perspectives.dart';
export 'course_pathways/course_pathways_biology.dart';
export 'course_pathways/course_pathways_chemistry.dart';
export 'course_pathways/course_pathways_physics.dart';

import 'course_pathways/course_pathways_core.dart';
import 'course_pathways/course_pathways_mathematics.dart';
import 'course_pathways/course_pathways_science.dart';
import 'course_pathways/course_pathways_english.dart';
import 'course_pathways/course_pathways_computing.dart';
import 'course_pathways/course_pathways_humanities.dart';
import 'course_pathways/course_pathways_global_perspectives.dart';
import 'course_pathways/course_pathways_biology.dart';
import 'course_pathways/course_pathways_chemistry.dart';
import 'course_pathways/course_pathways_physics.dart';

/// Every defined course pathway -- extend this list as more subjects/
/// grades get authored beyond this vertical slice.
const List<CoursePathwayDef> allCoursePathways = [
  secondary1ComputingPathway,
  secondary2ComputingPathway,
  secondary3ComputingPathway,
  secondary1MathematicsPathway,
  secondary1SciencePathway,
  secondary3SciencePathway,
  secondary1EnglishPathway,
  secondary2EnglishPathway,
  secondary3EnglishPathway,
  secondary1GlobalPerspectivesPathway,
  secondary2GlobalPerspectivesPathway,
  secondary3GlobalPerspectivesPathway,
  secondary3MathematicsPathway,
  year1MathematicsPathway,
  year1SciencePathway,
  year1EnglishPathway,
  year1ComputingPathway,
  year1HumanitiesPathway,
  year2MathematicsPathway,
  year2SciencePathway,
  year2EnglishPathway,
  year2ComputingPathway,
  year2HumanitiesPathway,
  year4MathematicsPathway,
  year4SciencePathway,
  year4EnglishPathway,
  year4ComputingPathway,
  year4HumanitiesPathway,
  year5EnglishPathway,
  year5ComputingPathway,
  year5MathematicsPathway,
  year5SciencePathway,
  year5HumanitiesPathway,
  year6MathematicsPathway,
  year6SciencePathway,
  year6ComputingPathway,
  year6EnglishPathway,
  year6HumanitiesPathway,
  igcseCombinedSciencePathway,
  secondary2MathematicsPathway,
  secondary2SciencePathway,
  igcseMathematicsPathway,
  igcseBiologyPathway,
  igcseChemistryPathway,
  igcsePhysicsPathway,
  igcseEnglishPathway,
  igcseComputingPathway,
  igcseGlobalPerspectivesPathway,
  year3MathematicsPathway,
  year3SciencePathway,
  year3EnglishPathway,
  year3ComputingPathway,
  year3HumanitiesPathway,
];

/// Finds the [DailyLessonDef] with [id] across every pathway/term/week, or
/// `null` if not found (e.g. a stale or mistyped id). Single shared lookup
/// used by [quizQuestionsForModule]/[dragMatchPairsForModule]'s
/// course-pathway fallback and by [SortingScreen]/[ReadingScreen] directly.
DailyLessonDef? courseDailyLessonById(String id) {
  for (final pathway in allCoursePathways) {
    for (final term in pathway.terms) {
      for (final week in term.weeks) {
        for (final lesson in week.dailyLessons) {
          if (lesson.id == id) return lesson;
        }
      }
    }
  }
  return null;
}
