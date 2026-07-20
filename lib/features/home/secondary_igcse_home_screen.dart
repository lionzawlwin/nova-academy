import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/utils/grade_localization.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../lessons/lesson_navigation.dart';
import 'home_shared_widgets.dart';

/// A reasonable "full stars" goal used purely to give the progress summary
/// something to fill toward -- not a real product concept yet (mirrors the
/// same constant used on the teacher dashboard).
const int _starsGoal = 50;

class _SubjectDef {
  const _SubjectDef({required this.key, required this.icon});
  final String key;
  final IconData icon;
}

const List<_SubjectDef> _secondarySubjects = [
  _SubjectDef(key: 'algebra', icon: Icons.functions_rounded),
  _SubjectDef(key: 'physics', icon: Icons.bolt_rounded),
  _SubjectDef(key: 'chemistry', icon: Icons.biotech_rounded),
  _SubjectDef(key: 'biology', icon: Icons.eco_rounded),
  _SubjectDef(key: 'ict', icon: Icons.memory_rounded),
  _SubjectDef(key: 'socialstudies', icon: Icons.public_rounded),
  _SubjectDef(key: 'coding', icon: Icons.code_rounded),
  _SubjectDef(key: 'engineering', icon: Icons.precision_manufacturing_rounded),
  _SubjectDef(key: 'computing', icon: Icons.computer_rounded),
  _SubjectDef(key: 'history', icon: Icons.history_edu_rounded),
  _SubjectDef(key: 'geography', icon: Icons.public_rounded),
];

String _labelFor(AppLocalizations l10n, String key) {
  switch (key) {
    case 'algebra':
      return l10n.subjectAlgebra;
    case 'physics':
      return l10n.subjectPhysics;
    case 'chemistry':
      return l10n.subjectChemistry;
    case 'biology':
      return l10n.subjectBiology;
    case 'ict':
      return l10n.subjectIct;
    case 'socialstudies':
      return l10n.subjectSocialStudies;
    case 'coding':
      return l10n.subjectCoding;
    case 'engineering':
      return l10n.subjectEngineering;
    case 'computing':
      return l10n.subjectComputing;
    case 'history':
      return l10n.subjectHistory;
    case 'geography':
      return l10n.subjectGeography;
    default:
      return key;
  }
}

/// Whether [module] is one [child] has already finished, per
/// [ChildModel.completedModuleIds]. A `null` child (no active student
/// profile, e.g. an owner/parent/teacher viewing this screen directly)
/// never counts anything as completed.
bool _isModuleCompleted(ChildModel? child, LearningModuleModel module) {
  return child?.completedModuleIds.contains(module.id) ?? false;
}

/// The Secondary/IGCSE student home: a mature, information-dense dashboard
/// -- subject cards, a progress summary, and an upcoming modules list --
/// in a muted-premium palette rather than the brighter tones of the
/// younger tiers.
class SecondaryIgcseHomeScreen extends ConsumerWidget {
  const SecondaryIgcseHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final activeProfile = ref.watch(activeProfileProvider);
    final child = activeProfile is StudentProfile ? activeProfile.child : null;
    final locale = Localizations.localeOf(context).languageCode;
    final grade = child?.currentGrade;
    final modulesAsync = grade != null
        ? ref.watch(learningModulesForGradeProvider(grade))
        : ref.watch(learningModulesProvider);
    final gradeModules =
        (modulesAsync.valueOrNull ?? const <LearningModuleModel>[])
            .where((m) => grade == null || m.grade == grade)
            .toList();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          children: [
            _Header(child: child, locale: locale),
            const SizedBox(height: 20),
            _ProgressSummary(
              stars: child?.totalStars ?? 0,
              moduleCount: gradeModules.length,
            ),
            const SizedBox(height: 24),
            Text(
              l10n.homeSubjectsTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _secondarySubjects.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 210,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 1.15,
              ),
              itemBuilder: (context, index) {
                final subject = _secondarySubjects[index];
                final count = gradeModules
                    .where((m) => m.subject.toLowerCase() == subject.key)
                    .length;
                return _SubjectCard(
                  label: _labelFor(l10n, subject.key),
                  icon: subject.icon,
                  moduleCount: count,
                  index: index,
                );
              },
            ),
            const SizedBox(height: 28),
            Text(
              l10n.homeUpcomingModulesTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            if (gradeModules.isEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.hourglass_empty_rounded,
                      color: theme.colorScheme.outline,
                      size: 32,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      l10n.homeNoModulesYet,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              )
            else
              Column(
                children: [
                  for (var i = 0; i < gradeModules.length; i++)
                    _ModuleListTile(
                      module: gradeModules[i],
                      locale: locale,
                      isCompleted: _isModuleCompleted(child, gradeModules[i]),
                      isLocked:
                          i > 0 &&
                          !_isModuleCompleted(child, gradeModules[i]) &&
                          !_isModuleCompleted(child, gradeModules[i - 1]),
                    ),
                ],
              ),
            const SizedBox(height: 24),
            const GatekeeperEntryButton(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.child, required this.locale});

  final ChildModel? child;
  final String locale;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // Deep Cobalt on Charcoal Navy jewel-tone pairing (design spec's
        // Secondary/IGCSE accent), replacing the old flat-muted
        // `AppGradients.secondaryMuted` gradient.
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.charcoalNavy, AppColors.deepCobalt],
        ),
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.card(theme.brightness),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white.withValues(alpha: 0.16),
            child: Text(
              (child?.aliasName.isNotEmpty ?? false)
                  ? child!.aliasName[0].toUpperCase()
                  : '?',
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    l10n.dashboardWelcomeMessage(
                      child?.aliasName ?? l10n.appName,
                    ),
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (child != null)
                  Text(
                    gradeLabel(l10n, child!.currentGrade),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
              ],
            ),
          ),
          const LanguageToggleButton(color: Colors.white),
          const SwitchProfileButton(color: Colors.white),
        ],
      ),
    );
  }
}

class _ProgressSummary extends StatelessWidget {
  const _ProgressSummary({required this.stars, required this.moduleCount});

  final int stars;
  final int moduleCount;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final fraction = (stars / _starsGoal).clamp(0.0, 1.0);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        boxShadow: AppShadows.card(theme.brightness),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.homeProgressSummaryTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(child: _InsetProgressBar(fraction: fraction)),
              const SizedBox(width: 12),
              Text(
                l10n.homeStarsProgress(stars, _starsGoal),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            l10n.homeModulesAvailable(moduleCount),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}

/// The design spec's "progress bars" component for this tier: a chunky
/// *inset* (carved-in) track -- the bevel technique in reverse, so it never
/// competes visually with the popped-out subject/module bevel surfaces
/// elsewhere on this screen -- filled by a glossy rounded-cap bar in the
/// tier's Deep Cobalt accent with a subtle top-edge highlight line. Visual
/// technique shared with `mcq_quiz_screen.dart`'s `_SegmentedProgressBar`
/// (same carved-track/glossy-fill construction), kept as a separate widget
/// here since this bar is a single continuous fraction rather than
/// per-question segments.
class _InsetProgressBar extends StatelessWidget {
  const _InsetProgressBar({required this.fraction});

  final double fraction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final carvedTrack = theme.brightness == Brightness.light
        ? AppColors.charcoalNavy.withValues(alpha: 0.1)
        : Colors.black.withValues(alpha: 0.35);
    final clamped = fraction.clamp(0.0, 1.0);

    return Container(
      height: 12,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: carvedTrack,
        borderRadius: BorderRadius.circular(999),
        // Carved-in look: a soft inner shadow hugging the top edge reads
        // as "dug in" rather than "popped out".
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.22),
            blurRadius: 3,
            offset: const Offset(0, 1.5),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: clamped,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.deepCobalt.withValues(alpha: 0.85),
                  AppColors.deepCobalt,
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 1.5),
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A subject tile on the Secondary/IGCSE grid, rebuilt on
/// [CandyBevelSurface] at the design spec's shallowest bevel preset (3-4dp
/// -- "dense lists don't feel as toy-like") and recolored onto the spec's
/// Deep Cobalt on Charcoal Navy jewel-tone pairing, replacing the old
/// per-subject [AppColors.secondaryPalette] rotation with one consistent
/// "confident productivity dashboard" accent -- subjects stay
/// distinguishable by their (already-unique) icon alone.
///
/// Also plays the spec's "newly-unlocked ... subject cards (Secondary):
/// 'drop and bounce' entrance" motion once on first load, staggered 60ms
/// apart by [index] -- the same construction as Primary's `_PathNode`
/// entrance, since neither tier has real unlock/lock state to key off of
/// yet (out of scope for this visual-only mission). Deliberately no
/// confetti/wobble here, per the spec's per-tier note dropping that motion
/// vocabulary for this tier in favor of the quieter drop-and-bounce entrance
/// only.
class _SubjectCard extends StatefulWidget {
  const _SubjectCard({
    required this.label,
    required this.icon,
    required this.moduleCount,
    required this.index,
  });

  final String label;
  final IconData icon;
  final int moduleCount;
  final int index;

  @override
  State<_SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<_SubjectCard>
    with SingleTickerProviderStateMixin {
  static const _entranceDuration = Duration(milliseconds: 600);
  static const _staggerStep = Duration(milliseconds: 60);

  late final AnimationController _entranceController = AnimationController(
    vsync: this,
    duration: _entranceDuration,
  );
  late final Animation<double> _drop = CurvedAnimation(
    parent: _entranceController,
    curve: Curves.elasticOut,
  );

  // The spec's "1.0 -> 1.1 -> 1.0 scale pop" -- a plain split of the same
  // controller drives this, independent of `_drop`'s elastic overshoot
  // curve (which only governs the translateY "drop").
  static final Animatable<double> _scalePop = TweenSequence<double>([
    TweenSequenceItem(
      weight: 50,
      tween: Tween(
        begin: 1.0,
        end: 1.1,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 50,
      tween: Tween(
        begin: 1.1,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.easeIn)),
    ),
  ]);

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
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: _entranceController,
      builder: (context, child) {
        final dropOffset = -20 * (1 - _drop.value);
        return Transform.translate(
          offset: Offset(0, dropOffset),
          child: Transform.scale(
            scale: _scalePop.evaluate(_entranceController),
            child: child,
          ),
        );
      },
      child: CandyBevelSurface(
        faceColor: AppColors.charcoalNavy,
        bevelDepth: CandyBevelDepth.secondary,
        borderRadius: AppTheme.radiusMedium,
        padding: const EdgeInsets.all(16),
        border: Border.all(color: AppColors.deepCobalt.withValues(alpha: 0.35)),
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(l10n.actionComingSoon)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(widget.icon, color: AppColors.deepCobalt, size: 30),
            Flexible(
              child: Text(
                widget.label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.homeModulesAvailable(widget.moduleCount),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 16,
                  color: AppColors.deepCobalt,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// One module row on the Secondary/IGCSE "upcoming modules" list, rebuilt
/// on [CandyBevelSurface] at the same shallow 3-4dp bevel preset as
/// [_SubjectCard] -- resolving the survey's pre-existing inconsistency
/// where this tile previously had *no* shadow at all, unlike
/// [_ProgressSummary]'s `AppShadows.card`, by applying the same bevel
/// treatment consistently to both. The leading icon chip now uses the
/// spec's Deep Cobalt jewel accent instead of the old per-index
/// [AppColors.secondaryPalette] rotation; the star count uses
/// [AppColors.goldMedal] per the spec's success/star token.
///
/// Also carries the progression/unlock system: a row is locked when
/// neither it nor the row directly before it has been completed (index 0
/// is never locked) -- it renders muted with a lock glyph swapped in for
/// the book icon, and tapping surfaces a hint instead of opening the
/// detail dialog. A completed row stays at full styling, gains a small
/// gold checkmark badge on its icon chip, and remains fully tappable for
/// replay -- completion never re-locks content.
class _ModuleListTile extends StatelessWidget {
  const _ModuleListTile({
    required this.module,
    required this.locale,
    required this.isCompleted,
    required this.isLocked,
  });

  final LearningModuleModel module;
  final String locale;

  /// True once [module.id] is in the active child's
  /// [ChildModel.completedModuleIds] -- stays fully tappable for replay,
  /// never locked, per product spec.
  final bool isCompleted;

  /// True when this row sits after index 0 and neither it nor the row
  /// immediately before it has been completed yet -- computed by the
  /// caller from [ChildModel.completedModuleIds] order in `gradeModules`.
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final title = locale == 'my' ? module.titleMy : module.titleEn;
    final description = locale == 'my'
        ? module.descriptionMy
        : module.descriptionEn;

    // Locked rows render visually muted (via reduced opacity on the whole
    // face content) but stay tappable -- unlike `CandyBevelState.disabled`,
    // which would swallow the tap entirely, a locked row still needs its
    // `onTap` to fire so it can surface the "complete the previous module
    // first" hint below.
    final row = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: isLocked
                    ? theme.colorScheme.outline.withValues(alpha: 0.35)
                    : AppColors.deepCobalt,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                isLocked ? Icons.lock_rounded : Icons.menu_book_rounded,
                color: Colors.white,
                size: 22,
              ),
            ),
            if (isCompleted)
              Positioned(
                right: -4,
                bottom: -4,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.goldMedal,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.colorScheme.surfaceContainerHigh,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    size: 12,
                    color: AppColors.charcoalNavy,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (description.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star_rounded,
              color: AppColors.goldMedal,
              size: 16,
            ),
            const SizedBox(width: 2),
            Text('${module.starsReward}', style: theme.textTheme.bodySmall),
          ],
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: CandyBevelSurface(
        faceColor: theme.colorScheme.surfaceContainerHigh,
        bevelDepth: CandyBevelDepth.secondary,
        borderRadius: AppTheme.radiusMedium,
        padding: const EdgeInsets.all(14),
        onTap: () {
          if (isLocked) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(l10n.homeLessonLocked)));
            return;
          }
          _showDetail(context, title, description);
        },
        child: isLocked ? Opacity(opacity: 0.5, child: row) : row,
      ),
    );
  }

  /// The module-detail dialog itself stays flat/elevation-0 (unchanged
  /// theme convention -- "chrome stays calm"), but its actionable Close/
  /// Explore buttons get the shallow [CandyBevelSurface] treatment per the
  /// spec's "every actionable element inside [a dialog] still gets the
  /// two-layer bevel treatment" rule. The Explore button now dispatches
  /// through [pushLessonForModule] rather than hardcoding the MCQ quiz
  /// route, so fill-in-blank/drag-match modules land on their own lesson
  /// screens while existing quiz modules keep working exactly as before
  /// (the function's fallback path).
  void _showDetail(BuildContext context, String title, String description) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(title),
        content: description.isEmpty ? null : Text(description),
        actions: [
          CandyBevelSurface(
            faceColor: theme.colorScheme.surfaceContainerHighest,
            bevelDepth: CandyBevelDepth.secondary,
            borderRadius: AppTheme.radiusSmall,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            onTap: () => Navigator.of(dialogContext).pop(),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                l10n.actionClose,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          CandyBevelSurface(
            faceColor: AppColors.deepCobalt,
            bevelDepth: CandyBevelDepth.secondary,
            borderRadius: AppTheme.radiusSmall,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            onTap: () {
              Navigator.of(dialogContext).pop();
              pushLessonForModule(
                context,
                module: module,
                title: title,
                subjectKey: module.subject,
                stars: module.starsReward,
              );
            },
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                l10n.actionExplore,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
