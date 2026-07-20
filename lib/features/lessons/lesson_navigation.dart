import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/learning_module_model.dart';
import '../../routing/app_router.dart';
import 'drag_match_screen.dart';
import 'fill_in_blank_screen.dart';
import 'mcq_quiz_screen.dart';

/// Single shared dispatch point for "start this learning module's lesson" --
/// branches on [LearningModuleModel.contentType] to push whichever
/// interactive lesson screen that content type needs, so callers (Primary
/// and Secondary/IGCSE home screens, etc.) never have to hardcode which
/// screen/args class a given module maps to.
///
/// * `"fillBlank"` -> [AppRoutes.lessonFillBlank] / [FillInTheBlankScreen].
/// * `"dragMatch"` -> [AppRoutes.lessonDragMatch] / [DragMatchScreen].
/// * anything else -- `null`, `"quiz"`, `"video"`, or any future/
///   unrecognized value -- falls back to [AppRoutes.lessonPrimaryQuiz] /
///   [McqQuizScreen], exactly matching the behavior every existing call
///   site already had before this function existed, so nothing regresses
///   for existing quiz content.
///
/// [module] may be `null` (e.g. a path node with no seeded module yet) --
/// the fallback quiz branch handles that the same way `McqQuizArgs.moduleId`
/// already tolerates a null id today.
Future<void> pushLessonForModule(
  BuildContext context, {
  required LearningModuleModel? module,
  required String title,
  required String subjectKey,
  required int stars,
}) async {
  switch (module?.contentType) {
    case 'fillBlank':
      await context.push(
        AppRoutes.lessonFillBlank,
        extra: FillBlankArgs(
          title: title,
          subject: subjectKey,
          stars: stars,
          moduleId: module?.id,
        ),
      );
    case 'dragMatch':
      await context.push(
        AppRoutes.lessonDragMatch,
        extra: DragMatchArgs(
          title: title,
          subject: subjectKey,
          stars: stars,
          moduleId: module?.id,
        ),
      );
    default:
      await context.push(
        AppRoutes.lessonPrimaryQuiz,
        extra: McqQuizArgs(
          title: title,
          subject: subjectKey,
          stars: stars,
          moduleId: module?.id,
        ),
      );
  }
}
