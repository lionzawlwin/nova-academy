import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/lessons/course_pathway_bank.dart';
import 'children_providers.dart';

/// Flattens every week across every term of [pathway], in course order --
/// the same fold [CoursePathwayBrowser]'s `_authoredWeeks` already applies
/// for a count, generalized to the ordered list itself so week-to-week
/// navigation isn't bounded by term boundaries.
List<CourseWeekDef> weeksInOrder(CoursePathwayDef pathway) => [
  for (final term in pathway.terms) ...term.weeks,
];

/// The [CoursePathwayDef] that owns [week] (matched by [CourseWeekDef.id]),
/// so a screen given only a week -- as [CoursePathwayWeekScreen] is, via
/// its route's `extra` -- can still look up the owning pathway for
/// week-to-week navigation without changing that route's argument shape.
/// Every [CourseWeekDef] instance reaching the screen necessarily comes
/// from [allCoursePathways], so this always finds a match.
CoursePathwayDef pathwayContainingWeek(CourseWeekDef week) {
  for (final pathway in allCoursePathways) {
    if (weeksInOrder(pathway).any((w) => w.id == week.id)) return pathway;
  }
  throw StateError('No pathway in allCoursePathways contains week ${week.id}');
}

/// True once every [CourseWeekDef.dailyLessons] id in [week] is present in
/// [completedIds] -- the same "all days done" condition
/// [CoursePathwayWeekScreen]'s day-node gating already checks per lesson,
/// promoted to whole-week granularity.
bool isWeekFullyComplete(CourseWeekDef week, Set<String> completedIds) =>
    week.dailyLessons.every((lesson) => completedIds.contains(lesson.id));

/// True if [week] is reachable: the first authored week of [pathway] is
/// always unlocked; every later week unlocks only once the previous
/// authored week (regardless of which term it belongs to) is fully
/// complete. This is [CoursePathwayWeekScreen]'s day-level "previous node
/// done" rule applied one level up, so a pathway's weeks form one
/// continuous path instead of independently-reachable islands.
bool isWeekUnlocked(
  CoursePathwayDef pathway,
  CourseWeekDef week,
  Set<String> completedIds,
) {
  final ordered = weeksInOrder(pathway);
  final index = ordered.indexWhere((w) => w.id == week.id);
  if (index <= 0) return true;
  return isWeekFullyComplete(ordered[index - 1], completedIds);
}

/// The week a learner should land on when opening [pathway]: the first
/// authored week that isn't fully complete yet, or the last authored week
/// if every authored week so far is done (so finishing all authored
/// content doesn't dead-end the entry point).
CourseWeekDef currentWeekFor(
  CoursePathwayDef pathway,
  Set<String> completedIds,
) {
  final ordered = weeksInOrder(pathway);
  for (final week in ordered) {
    if (!isWeekFullyComplete(week, completedIds)) return week;
  }
  return ordered.last;
}

/// The week immediately after [week] in [pathway]'s course order, or `null`
/// if [week] is the last authored week (nothing further to continue to
/// yet).
CourseWeekDef? nextWeekAfter(CoursePathwayDef pathway, CourseWeekDef week) {
  final ordered = weeksInOrder(pathway);
  final index = ordered.indexWhere((w) => w.id == week.id);
  if (index == -1 || index == ordered.length - 1) return null;
  return ordered[index + 1];
}

/// Sums [DailyLessonDef.xpReward] for every completed lesson across every
/// authored pathway, plus each [CourseWeekDef.xpReward] bonus once a
/// week's daily lessons are all complete -- a real, always-consistent
/// running total derived from [ChildModel.completedModuleIds] rather than
/// a separately stored/incremented field, so it can never drift out of
/// sync with what was actually completed.
int totalCourseXpEarned(Set<String> completedIds) {
  var xp = 0;
  for (final pathway in allCoursePathways) {
    for (final week in weeksInOrder(pathway)) {
      for (final lesson in week.dailyLessons) {
        if (completedIds.contains(lesson.id)) xp += lesson.xpReward;
      }
      if (isWeekFullyComplete(week, completedIds)) xp += week.xpReward;
    }
  }
  return xp;
}

/// The active child's [completedModuleIds] as a [Set], reactive to the same
/// live stream [activeChildProvider] already exposes -- shared base for the
/// providers below so each doesn't re-derive its own copy.
final _completedModuleIdSetProvider = Provider<Set<String>>((ref) {
  final child = ref.watch(activeChildProvider);
  return child?.completedModuleIds.toSet() ?? const <String>{};
});

/// Riverpod wrapper around [currentWeekFor] for the active child -- used by
/// [CoursePathwayBrowser] so tapping a pathway card lands on the learner's
/// actual next week instead of always [CoursePathwayDef.terms]'s first
/// week.
final currentWeekForPathwayProvider =
    Provider.family<CourseWeekDef, CoursePathwayDef>((ref, pathway) {
      final completedIds = ref.watch(_completedModuleIdSetProvider);
      return currentWeekFor(pathway, completedIds);
    });

/// Riverpod wrapper around [isWeekUnlocked] for the active child.
final weekUnlockedProvider =
    Provider.family<bool, ({CoursePathwayDef pathway, CourseWeekDef week})>((
      ref,
      args,
    ) {
      final completedIds = ref.watch(_completedModuleIdSetProvider);
      return isWeekUnlocked(args.pathway, args.week, completedIds);
    });

/// Riverpod wrapper around [totalCourseXpEarned] for the active child.
final totalCourseXpProvider = Provider<int>((ref) {
  final completedIds = ref.watch(_completedModuleIdSetProvider);
  return totalCourseXpEarned(completedIds);
});
