import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/home_tier.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/grade_localization.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../providers/course_progress_providers.dart';
import '../lessons/course_pathway_bank.dart';
import '../../routing/app_router.dart';

/// Icon shown on a pathway card, keyed by [CoursePathwayDef.subject]. Falls
/// back to a generic school icon for any future subject added to
/// [allCoursePathways] before this map is updated.
IconData _iconForPathwaySubject(String subject) {
  switch (subject) {
    case 'computing':
      return Icons.computer_rounded;
    case 'mathematics':
      return Icons.calculate_rounded;
    case 'science':
      return Icons.science_rounded;
    case 'english':
      return Icons.menu_book_rounded;
    default:
      return Icons.school_rounded;
  }
}

int _authoredWeeks(CoursePathwayDef pathway) =>
    pathway.terms.fold(0, (sum, term) => sum + term.weeks.length);

/// Pure filtering logic behind [CoursePathwayBrowser], pulled out as a
/// top-level function so it's unit-testable without pumping a widget tree.
/// See [CoursePathwayBrowser]'s doc comment for why [grade] (not just
/// [tier]) is required to avoid every grade in a tier seeing the same cards.
List<CoursePathwayDef> pathwaysForTierAndGrade({
  required HomeTier tier,
  Grade? grade,
}) => [
  for (final pathway in allCoursePathways)
    if (grade != null
        ? pathway.grade == grade
        : homeTierForGrade(pathway.grade) == tier)
      pathway,
];

/// Replaces the old single hardcoded "Full Year Computing Course (Beta)"
/// banner with a dynamic entry-card list covering every pathway in
/// [allCoursePathways] matching [tier] -- so newly authored pathways (e.g.
/// Secondary 1 Mathematics, or Year 1 Mathematics) become tappable the
/// moment they're added to that list, with no further home-screen changes
/// required. [tier] is required (not inferred from the active child) so
/// this widget can never accidentally leak another tier's pathways --
/// e.g. a Primary student must never see a Secondary 1 pathway card just
/// because both happen to live in the same flat [allCoursePathways] list.
///
/// [grade] narrows further, to the exact grade within that tier: a tier
/// (Primary, Secondary) spans several [Grade] values (Year 1 through
/// Year 6 for Primary alone), and without this every one of those grades
/// used to see the identical set of pathway cards -- e.g. a Year 2 student
/// was shown the Year 1 Mathematics and Year 4 Mathematics cards too,
/// since both pathways satisfy `homeTierForGrade(pathway.grade) == tier`.
/// When [grade] is null (no active student profile -- an owner/parent/
/// teacher previewing the tier directly), this falls back to the old
/// tier-wide list so there's still something to preview.
class CoursePathwayBrowser extends StatelessWidget {
  const CoursePathwayBrowser({super.key, required this.tier, this.grade});

  final HomeTier tier;
  final Grade? grade;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final pathways = pathwaysForTierAndGrade(tier: tier, grade: grade);
    if (pathways.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.homeCoursePathwaysTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          l10n.homeCoursePathwaysSubtitle,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
        const SizedBox(height: 12),
        for (var i = 0; i < pathways.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: _PathwayCard(pathway: pathways[i], index: i),
          ),
      ],
    );
  }
}

class _PathwayCard extends ConsumerStatefulWidget {
  const _PathwayCard({required this.pathway, required this.index});

  final CoursePathwayDef pathway;
  final int index;

  @override
  ConsumerState<_PathwayCard> createState() => _PathwayCardState();
}

/// Same "drop and bounce" entrance vocabulary as `_SubjectCard` on this
/// screen's subject grid, staggered by [_PathwayCard.index] -- keeps the
/// pathway cards visually consistent with the rest of the Secondary/IGCSE
/// dashboard rather than introducing a new motion language.
class _PathwayCardState extends ConsumerState<_PathwayCard>
    with SingleTickerProviderStateMixin {
  static const _entranceDuration = Duration(milliseconds: 600);
  static const _staggerStep = Duration(milliseconds: 80);

  late final AnimationController _entranceController = AnimationController(
    vsync: this,
    duration: _entranceDuration,
  );
  late final Animation<double> _drop = CurvedAnimation(
    parent: _entranceController,
    curve: Curves.elasticOut,
  );

  @override
  void initState() {
    super.initState();
    Future.delayed(_staggerStep * widget.index, () {
      if (mounted) _entranceController.forward();
    });
  }

  @override
  void dispose() {
    _entranceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final lc = Localizations.localeOf(context).languageCode;
    final pathway = widget.pathway;
    final accent = AppColors
        .secondaryPalette[widget.index % AppColors.secondaryPalette.length];
    final authored = _authoredWeeks(pathway);
    final xp = ref.watch(pathwayXpProvider(pathway));

    return AnimatedBuilder(
      animation: _entranceController,
      builder: (context, child) {
        final dropOffset = -20 * (1 - _drop.value);
        return Transform.translate(
          offset: Offset(0, dropOffset),
          child: Opacity(opacity: _entranceController.value, child: child),
        );
      },
      child: CandyBevelSurface(
        onTap: () => context.push(
          AppRoutes.coursePathwayWeek,
          extra: ref.read(currentWeekForPathwayProvider(pathway)),
        ),
        faceColor: theme.colorScheme.surfaceContainerHigh,
        bevelDepth: CandyBevelDepth.secondary,
        borderRadius: AppTheme.radiusLarge,
        border: Border.all(color: accent, width: 2),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                _iconForPathwaySubject(pathway.subject),
                color: Colors.white,
                size: 26,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          lc == 'my' ? pathway.titleMy : pathway.titleEn,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: accent.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          gradeLabel(l10n, pathway.grade),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: accent,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      _PathwayXpChip(xp: xp),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _MiniProgressBar(
                    fraction: authored / pathway.totalWeeks,
                    color: accent,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    l10n.homeCoursePathwayWeeksReady(
                      authored,
                      pathway.totalWeeks,
                    ),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Small pill showing the learner's XP earned within a single pathway --
/// mirrors the `_XpChip` visual pattern from `course_pathway_week_screen.dart`
/// (bolt icon + gold pill) so XP always reads the same way across screens.
class _PathwayXpChip extends StatelessWidget {
  const _PathwayXpChip({required this.xp});

  final int xp;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
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
            l10n.coursePathwayCardXpEarned(xp),
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.goldMedal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

/// Slim proportion bar showing how many weeks of a 36-week pathway are
/// authored so far -- an honest, always-growing progress indicator rather
/// than a fixed decoration.
class _MiniProgressBar extends StatelessWidget {
  const _MiniProgressBar({required this.fraction, required this.color});

  final double fraction;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final track = theme.brightness == Brightness.light
        ? AppColors.charcoalNavy.withValues(alpha: 0.1)
        : Colors.black.withValues(alpha: 0.35);
    final clamped = fraction.clamp(0.0, 1.0);

    return Container(
      height: 6,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: track,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: clamped,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ),
      ),
    );
  }
}
