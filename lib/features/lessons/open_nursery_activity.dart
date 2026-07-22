import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routing/app_router.dart';
import '../home/home_shared_widgets.dart';
import 'nursery_activity_kind.dart';
import 'nursery_kg_activity_bank.dart';
import 'nursery_kg_flashcards_bank.dart';
import 'nursery_kg_listening_bank.dart';
import 'nursery_kg_memory_bank.dart';
import 'nursery_kg_rhymes_bank.dart';
import 'nursery_kg_storytelling_bank.dart';

/// Resolves [summary] to its full authored content and pushes the matching
/// lesson route for its [NurseryActivitySummary.kind] -- the one place that
/// knows how every Nursery/KG widget type maps to a route, shared by
/// `NurseryKgHomeScreen._openLesson` (0-or-1 match) and
/// `NurseryActivityBrowserScreen` (2+ match) so the two call sites can
/// never drift out of sync on how a given kind is opened.
void openNurseryActivity(
  BuildContext context,
  NurseryActivitySummary summary,
  SubjectVisual subject,
) {
  switch (summary.kind) {
    case NurseryActivityKind.pictureMatching:
      context.push(
        AppRoutes.lessonNursery,
        extra: (subject, matchPairsForModule(summary.id)),
      );
    case NurseryActivityKind.listening:
      context.push(
        AppRoutes.lessonNurseryListening,
        extra: (subject, listeningDefForModule(summary.id)),
      );
    case NurseryActivityKind.memory:
      context.push(
        AppRoutes.lessonNurseryMemory,
        extra: (subject, memoryDefForModule(summary.id)),
      );
    case NurseryActivityKind.flashcards:
      context.push(
        AppRoutes.lessonNurseryFlashcards,
        extra: (subject, flashcardsDefForModule(summary.id)),
      );
    case NurseryActivityKind.storytelling:
      context.push(
        AppRoutes.lessonNurseryStory,
        extra: (subject, storyDefForModule(summary.id)),
      );
    case NurseryActivityKind.rhymes:
      context.push(
        AppRoutes.lessonNurseryRhymes,
        extra: (subject, rhymeDefForModule(summary.id)),
      );
  }
}
