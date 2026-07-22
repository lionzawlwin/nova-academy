import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/children_providers.dart';
import '../../providers/course_progress_providers.dart';
import '../../providers/mastery_providers.dart';
import '../../routing/app_router.dart';
import 'course_pathway_bank.dart';
import 'drag_match_screen.dart';
import 'mcq_quiz_screen.dart';
import 'reading_screen.dart';
import 'sorting_screen.dart';

/// Bilingual UI-chrome copy, following the same `*En`/`*My` paired-field
/// convention as the sibling lesson screens' `_t()` helpers.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// One week's Duolingo-style path: five sequential daily-lesson nodes,
/// each locked until the previous one is completed (mirrors
/// `PrimaryHomeScreen`'s winding-path lock logic, but expressed as a
/// simple vertical stack of day cards rather than a hand-painted path --
/// this is the vertical-slice proof, not the final polished path visual).
///
/// Reads live completion state via [activeChildProvider] (not a frozen
/// profile snapshot), so finishing a lesson unlocks the next node
/// instantly -- the same reactive-unlock fix the rest of the app now uses.
class CoursePathwayWeekScreen extends ConsumerWidget {
  const CoursePathwayWeekScreen({super.key, required this.week});

  final CourseWeekDef week;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final child = ref.watch(activeChildProvider);
    final completedIds = child?.completedModuleIds.toSet() ?? const <String>{};
    final pathway = pathwayContainingWeek(week);
    final weekComplete = isWeekFullyComplete(week, completedIds);
    final next = weekComplete ? nextWeekAfter(pathway, week) : null;
    final remedialLessons = ref.watch(weekRemedialLessonsProvider(week));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _t(context, 'Week ${week.weekNumber}', 'ပတ် ${week.weekNumber}'),
        ),
        actions: const [LanguageToggleButton()],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          children: [
            Text(
              Localizations.localeOf(context).languageCode == 'my'
                  ? week.titleMy
                  : week.titleEn,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  Icons.bolt_rounded,
                  color: AppColors.goldMedal,
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  _t(
                    context,
                    '${week.xpReward} XP for the full week',
                    'ပတ်တစ်ပတ်လုံးအတွက် XP ${week.xpReward}',
                  ),
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            for (var i = 0; i < week.dailyLessons.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: _DayNode(
                  lesson: week.dailyLessons[i],
                  isCompleted: completedIds.contains(week.dailyLessons[i].id),
                  isLocked:
                      i > 0 &&
                      !completedIds.contains(week.dailyLessons[i].id) &&
                      !completedIds.contains(week.dailyLessons[i - 1].id),
                  onTap: () => _openLesson(context, week.dailyLessons[i]),
                ),
              ),
            if (remedialLessons.isNotEmpty) ...[
              const SizedBox(height: 8),
              _RemedialReviewCard(
                lessons: remedialLessons,
                onOpenLesson: (lesson) => _openLesson(context, lesson),
              ),
            ],
            if (weekComplete) ...[
              const SizedBox(height: 8),
              _WeekCompleteCard(nextWeek: next),
            ],
          ],
        ),
      ),
    );
  }

  void _openLesson(BuildContext context, DailyLessonDef lesson) {
    final lc = Localizations.localeOf(context).languageCode;
    final title = lc == 'my' ? lesson.titleMy : lesson.titleEn;

    switch (lesson.kind) {
      case LessonKind.quiz:
        context.push(
          AppRoutes.lessonPrimaryQuiz,
          extra: McqQuizArgs(
            title: title,
            subject: 'computing',
            stars: lesson.xpReward,
            moduleId: lesson.id,
          ),
        );
      case LessonKind.dragMatch:
        context.push(
          AppRoutes.lessonDragMatch,
          extra: DragMatchArgs(
            title: title,
            subject: 'computing',
            stars: lesson.xpReward,
            moduleId: lesson.id,
          ),
        );
      case LessonKind.sorting:
        context.push(
          AppRoutes.lessonSorting,
          extra: SortingArgs(
            title: title,
            stars: lesson.xpReward,
            moduleId: lesson.id,
          ),
        );
      case LessonKind.reading:
        context.push(
          AppRoutes.lessonReading,
          extra: ReadingArgs(
            title: title,
            stars: lesson.xpReward,
            moduleId: lesson.id,
          ),
        );
    }
  }
}

/// Shown when [weekRemedialLessonsProvider] flags this week's recap day as
/// completed below [masteryThresholdPercent] -- a supportive, non-blocking
/// nudge to replay the week's non-recap lessons, not a hard gate (a student
/// stays free to move on regardless; this only recommends). Visually
/// distinct from [_WeekCompleteCard]'s celebratory gold/teal treatment via
/// [AppColors.accent] (amber), reading as "here's a helpful suggestion"
/// rather than another congratulations.
class _RemedialReviewCard extends StatelessWidget {
  const _RemedialReviewCard({
    required this.lessons,
    required this.onOpenLesson,
  });

  final List<DailyLessonDef> lessons;
  final ValueChanged<DailyLessonDef> onOpenLesson;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final lc = Localizations.localeOf(context).languageCode;

    return CandyBevelSurface(
      faceColor: AppColors.accent.withValues(alpha: 0.14),
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: AppTheme.radiusLarge,
      border: Border.all(color: AppColors.accent.withValues(alpha: 0.4)),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.lightbulb_rounded, color: AppColors.accent),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l10n.coursePathwayReviewTitle,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            l10n.coursePathwayReviewSubtitle,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          for (final lesson in lessons)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                onTap: () => onOpenLesson(lesson),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          lc == 'my' ? lesson.titleMy : lesson.titleEn,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.replay_rounded,
                        size: 18,
                        color: AppColors.accent,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        l10n.coursePathwayReviewLessonHint,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: AppColors.accent,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Shown once every daily lesson in [week] is complete: either a "Continue
/// to Week N+1" call-to-action -- fixing the previous dead end where
/// [CoursePathwayBrowser] always relaunched [CoursePathwayDef.terms]'s
/// first week regardless of actual progress -- or an honest "more coming
/// soon" message once [nextWeek] is `null` because no further week has
/// been authored yet.
class _WeekCompleteCard extends StatelessWidget {
  const _WeekCompleteCard({required this.nextWeek});

  final CourseWeekDef? nextWeek;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return CandyBevelSurface(
      faceColor: AppColors.secondary.withValues(alpha: 0.14),
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: AppTheme.radiusLarge,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.celebration_rounded, color: AppColors.goldMedal),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l10n.coursePathwayWeekComplete,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (nextWeek != null)
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () =>
                    context.push(AppRoutes.coursePathwayWeek, extra: nextWeek),
                icon: const Icon(Icons.arrow_forward_rounded),
                label: Text(
                  l10n.coursePathwayContinueToWeek(nextWeek!.weekNumber),
                ),
              ),
            )
          else
            Text(
              l10n.coursePathwayMoreComingSoon,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
        ],
      ),
    );
  }
}

class _XpChip extends StatelessWidget {
  const _XpChip({required this.xp});

  final int xp;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.goldMedal.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.bolt_rounded, color: AppColors.goldMedal, size: 16),
          const SizedBox(width: 3),
          Text(
            '$xp',
            style: theme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _DayNode extends StatelessWidget {
  const _DayNode({
    required this.lesson,
    required this.isCompleted,
    required this.isLocked,
    required this.onTap,
  });

  final DailyLessonDef lesson;
  final bool isCompleted;
  final bool isLocked;
  final VoidCallback onTap;

  IconData get _kindIcon => switch (lesson.kind) {
    LessonKind.quiz => Icons.quiz_rounded,
    LessonKind.dragMatch => Icons.swap_horiz_rounded,
    LessonKind.sorting => Icons.sort_rounded,
    LessonKind.reading => Icons.auto_stories_rounded,
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lc = Localizations.localeOf(context).languageCode;
    final title = lc == 'my' ? lesson.titleMy : lesson.titleEn;

    return Opacity(
      opacity: isLocked ? 0.5 : 1,
      child: CandyBevelSurface(
        onTap: isLocked ? null : onTap,
        faceColor: isCompleted
            ? AppColors.secondary.withValues(alpha: 0.14)
            : theme.colorScheme.surfaceContainerHigh,
        bevelDepth: CandyBevelDepth.secondary,
        borderRadius: AppTheme.radiusLarge,
        border: lesson.isRecapDay
            ? Border.all(color: AppColors.goldMedal, width: 2)
            : null,
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: AppGradients.hero(theme.colorScheme),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: isLocked
                  ? const Icon(
                      Icons.lock_rounded,
                      color: Colors.white,
                      size: 22,
                    )
                  : isCompleted
                  ? const Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 26,
                    )
                  : Icon(_kindIcon, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _t(
                          context,
                          'Day ${lesson.dayNumber}',
                          'နေ့ ${lesson.dayNumber}',
                        ) +
                        (lesson.isRecapDay
                            ? _t(
                                context,
                                ' \u{1F3C6} Boss Level',
                                ' \u{1F3C6} ခေါင်းဆောင်အဆင့်',
                              )
                            : ''),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            _XpChip(xp: lesson.xpReward),
          ],
        ),
      ),
    );
  }
}
