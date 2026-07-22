import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../providers/children_providers.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/nursery_activity_index.dart';
import '../lessons/nursery_kg_activity_bank.dart' show MatchPairItem;
import '../lessons/open_nursery_activity.dart';
import 'home_shared_widgets.dart';

/// The Nursery/KG student home: as close to zero reading as a bilingual
/// app can get. Huge, brightly colored, bouncy touch targets carry all
/// the meaning; text is limited to the child's own name and one short
/// word per subject.
class NurseryKgHomeScreen extends ConsumerWidget {
  const NurseryKgHomeScreen({super.key});

  static List<SubjectVisual> _subjects(AppLocalizations l10n) => [
    SubjectVisual(
      label: l10n.subjectPhonics,
      icon: Icons.abc_rounded,
      color: AppColors.nurseryCandyPalette[0],
      subjectKey: 'phonics',
    ),
    SubjectVisual(
      label: l10n.subjectMath,
      icon: Icons.filter_2_rounded,
      color: AppColors.nurseryCandyPalette[1],
      subjectKey: 'math',
    ),
    SubjectVisual(
      label: l10n.subjectArt,
      icon: Icons.palette_rounded,
      color: AppColors.nurseryCandyPalette[2],
      subjectKey: 'art',
    ),
    SubjectVisual(
      label: l10n.subjectGeneralKnowledge,
      icon: Icons.emoji_objects_rounded,
      color: AppColors.nurseryCandyPalette[3],
      subjectKey: 'generalknowledge',
    ),
    SubjectVisual(
      label: l10n.subjectStem,
      icon: Icons.science_rounded,
      // The tightened Candy Core rotation has only 4 hues for 5+ subjects --
      // rotate back through the palette ("rotates with" per the design
      // spec).
      color: AppColors
          .nurseryCandyPalette[4 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'stem',
    ),
    SubjectVisual(
      label: l10n.subjectCoding,
      icon: Icons.code_rounded,
      color: AppColors
          .nurseryCandyPalette[5 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'coding',
    ),
    SubjectVisual(
      label: l10n.subjectEngineering,
      icon: Icons.precision_manufacturing_rounded,
      color: AppColors
          .nurseryCandyPalette[6 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'engineering',
    ),
    SubjectVisual(
      label: l10n.subjectHistory,
      icon: Icons.history_edu_rounded,
      color: AppColors
          .nurseryCandyPalette[7 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'history',
    ),
    SubjectVisual(
      label: l10n.subjectGeography,
      icon: Icons.public_rounded,
      color: AppColors
          .nurseryCandyPalette[8 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'geography',
    ),
    SubjectVisual(
      label: l10n.subjectComputing,
      icon: Icons.computer_rounded,
      color: AppColors
          .nurseryCandyPalette[9 % AppColors.nurseryCandyPalette.length],
      subjectKey: 'computing',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final child = ref.watch(activeChildProvider);
    final subjects = _subjects(l10n);

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppGradients.nurserySky),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: Row(
                  children: [
                    const SwitchProfileButton(color: Colors.white),
                    const Spacer(),
                    const LanguageToggleButton(color: Colors.white),
                    const GatekeeperEntryIconButton(color: Colors.white),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: Column(
                      children: [
                        _Header(
                          childName: child?.aliasName ?? l10n.appName,
                          stars: child?.totalStars ?? 0,
                        ),
                        const SizedBox(height: 28),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 22,
                          runSpacing: 22,
                          children: [
                            for (final subject in subjects)
                              _NurseryTile(
                                visual: subject,
                                onTap: () => _openLesson(
                                  context,
                                  ref,
                                  child?.currentGrade,
                                  subject,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Looks up the real seeded module(s) for [grade]/[subject.subjectKey]
  /// across every Nursery/KG activity bank -- picture-matching plus the
  /// five newer widget types, via `allNurseryActivitySummaries()` -- and
  /// either opens the matching lesson directly (0 or exactly 1 match --
  /// [openNurseryActivity] itself handles the "0 match" fallback since it
  /// tolerates a null/missing content lookup) or, when 2+ activities match
  /// (of any kind), pushes [NurseryActivityBrowserScreen] so the child can
  /// pick which one to play instead of only ever reaching the first.
  void _openLesson(
    BuildContext context,
    WidgetRef ref,
    Grade? grade,
    SubjectVisual subject,
  ) {
    final allModules = grade != null
        ? ref.read(learningModulesForGradeProvider(grade)).valueOrNull ??
              const []
        : ref.read(learningModulesProvider).valueOrNull ?? const [];
    final seededIds = allModules
        .where((m) => m.grade == grade && m.subject == subject.subjectKey)
        .map((m) => m.id)
        .toSet();

    final activities = [
      for (final summary in allNurseryActivitySummaries())
        if (seededIds.contains(summary.id)) summary,
    ];

    if (activities.length > 1) {
      // A non-empty `activities` list only ever contains entries for the
      // requested `grade` (every summary's `grade` came from a seeded
      // module filtered above by `m.grade == grade`), so `grade` itself is
      // guaranteed non-null here.
      context.push(
        AppRoutes.nurseryActivityBrowser,
        extra: (grade!, subject, activities),
      );
      return;
    }

    if (activities.isEmpty) {
      // No matching seeded module for this grade/subject yet -- fall back
      // to the picture-matching screen's own hardcoded fallback set (via a
      // `null` pairs extra) so a tile never shows a dead end, exactly the
      // pre-existing behavior this replaces.
      const List<MatchPairItem>? noPairs = null;
      context.push(AppRoutes.lessonNursery, extra: (subject, noPairs));
      return;
    }

    openNurseryActivity(context, activities.first, subject);
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.childName, required this.stars});

  final String childName;
  final int stars;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.85),
            shape: BoxShape.circle,
            boxShadow: AppShadows.floating(Colors.white),
          ),
          child: const Icon(
            Icons.emoji_emotions_rounded,
            color: Color(0xFFFF6F91),
            size: 52,
          ),
        ),
        const SizedBox(height: 12),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            childName,
            maxLines: 1,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              shadows: const [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(999),
          ),
          child: AnimatedStarBadge(
            stars: stars,
            iconSize: 30,
            textColor: const Color(0xFF5B4FE9),
          ),
        ),
      ],
    );
  }
}

/// One giant, bouncy subject button. Idles with a gentle rhythmic "breathe"
/// -- Candy Core exaggerates this into a subtle 3D "wobble": the same
/// scale pulse plus a small alternating rotation, both still driven by
/// [AnimatedScale]/[AnimatedRotation] reacting to a single periodically
/// flipped boolean, no [AnimationController] needed -- and hands press
/// feedback off to [CandyBevelSurface]'s own two-layer bevel sink/spring
/// animation instead of the old flat scale-down-on-press treatment.
class _NurseryTile extends StatefulWidget {
  const _NurseryTile({required this.visual, required this.onTap});

  final SubjectVisual visual;
  final VoidCallback onTap;

  @override
  State<_NurseryTile> createState() => _NurseryTileState();
}

class _NurseryTileState extends State<_NurseryTile> {
  static const _breatheDuration = Duration(milliseconds: 650);

  /// ±1.5° expressed as a fraction of a full turn, per the design spec's
  /// "scale 1.0→1.04 AND ±1.5° rotation" wobble motion.
  static const _wobbleTurns = 1.5 / 360;

  bool _breatheUp = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Stagger the start of each tile's idle loop so a row of tiles doesn't
    // all pulse in lockstep like a single blinking blob.
    final startDelay = Duration(milliseconds: 150 + Random().nextInt(700));
    _timer = Timer(startDelay, _startBreathing);
  }

  void _startBreathing() {
    _timer = Timer.periodic(const Duration(milliseconds: 1200), (_) {
      if (mounted) setState(() => _breatheUp = !_breatheUp);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final visual = widget.visual;
    final scale = _breatheUp ? 1.04 : 1.0;
    final wobbleTurns = _breatheUp ? _wobbleTurns : -_wobbleTurns;
    // 3 columns on a phone-width screen instead of the old fixed 140dp
    // tile (which only ever fit 2 per row and pushed later rows/subjects
    // below the fold) -- clamped so it still looks chunky on a tablet.
    final tileSize = responsiveTileSize(context, columns: 3);

    return SizedBox(
      width: tileSize + 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedScale(
            scale: scale,
            duration: _breatheDuration,
            curve: Curves.easeInOutSine,
            child: AnimatedRotation(
              turns: wobbleTurns,
              duration: _breatheDuration,
              curve: Curves.easeInOutSine,
              child: CandyBevelSurface(
                faceColor: visual.color,
                bevelDepth: CandyBevelDepth.nursery,
                borderRadius: tileSize * 0.28,
                width: tileSize,
                height: tileSize,
                padding: EdgeInsets.zero,
                onTap: widget.onTap,
                child: Icon(
                  visual.icon,
                  color: Colors.white,
                  size: tileSize * 0.48,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              visual.label,
              maxLines: 1,
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                shadows: const [
                  Shadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
