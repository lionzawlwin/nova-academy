import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/children_providers.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/nursery_activity_index.dart';
import '../lessons/nursery_kg_activity_bank.dart' show MatchPairItem;
import '../lessons/open_nursery_activity.dart';
import '../lessons/photo_guess_bank.dart';
import '../lessons/photo_guess_screen.dart' show PhotoGuessArgs;
import 'challenge_zone_section.dart';
import 'home_shared_widgets.dart';

/// The Nursery/KG student home: as close to zero reading as a bilingual
/// app can get. Huge, brightly colored, bouncy touch targets carry all
/// the meaning; text is limited to the child's own name and one short
/// word per subject.
class NurseryKgHomeScreen extends ConsumerStatefulWidget {
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
  ConsumerState<NurseryKgHomeScreen> createState() =>
      _NurseryKgHomeScreenState();
}

class _NurseryKgHomeScreenState extends ConsumerState<NurseryKgHomeScreen>
    with SingleTickerProviderStateMixin {
  /// One shared, continuously-repeating "breathe" animation driving every
  /// subject tile's idle wobble, replacing what used to be up to ~10
  /// independent `Timer.periodic` instances (one per tile) each firing its
  /// own `setState` on an uncoordinated schedule -- a real source of
  /// avoidable jank on lower-end Android hardware, since a single shared
  /// `Ticker` costs one frame callback total instead of up to ten
  /// independent ones interleaving unpredictably. Each tile reads this same
  /// controller through [_NurseryTile.animation] and offsets its own phase
  /// by index, so the row still looks alive/staggered rather than
  /// pulsing in lockstep.
  late final AnimationController _breatheController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2400),
  )..repeat();

  @override
  void dispose() {
    _breatheController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final child = ref.watch(activeChildProvider);
    final subjects = NurseryKgHomeScreen._subjects(l10n);

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
                        const SizedBox(height: 24),
                        ChallengeZoneSection(
                          items: _challengeZoneItems(l10n, subjects),
                          onTapItem: (item) => item.subjectKey == 'photoguess'
                              ? _openPhotoGuess(
                                  context,
                                  item.label,
                                  child?.currentGrade,
                                )
                              : _openLesson(
                                  context,
                                  ref,
                                  child?.currentGrade,
                                  SubjectVisual(
                                    label: item.label,
                                    icon: item.icon,
                                    color: item.color,
                                    subjectKey: item.subjectKey,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 24),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 22,
                          runSpacing: 22,
                          children: [
                            for (var i = 0; i < subjects.length; i++)
                              _NurseryTile(
                                visual: subjects[i],
                                animation: _breatheController,
                                phaseOffset: i / subjects.length,
                                onTap: () => _openLesson(
                                  context,
                                  ref,
                                  child?.currentGrade,
                                  subjects[i],
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

  /// Picks four of the gamified quiz subjects for the Challenge Zone out of
  /// the full nursery subject grid, in a fixed order -- General
  /// Knowledge, STEM (this tier's closest match to "Science" -- Nursery/KG
  /// content is seeded under the `stem` subject key, not a separate
  /// `science` one), Geography, History. Reuses each tile's existing
  /// [SubjectVisual] (label/icon/color) rather than re-deriving them, so
  /// the Challenge Zone cards match the main subject grid below exactly.
  /// [_challengeZoneItems] appends a fifth, `photoguess`, that isn't part
  /// of this list -- see that method.
  static const _challengeZoneKeys = [
    'generalknowledge',
    'stem',
    'geography',
    'history',
  ];

  List<ChallengeZoneItem> _challengeZoneItems(
    AppLocalizations l10n,
    List<SubjectVisual> subjects,
  ) {
    final byKey = {for (final s in subjects) s.subjectKey: s};
    return [
      for (final key in _challengeZoneKeys)
        if (byKey[key] case final visual?)
          ChallengeZoneItem(
            label: visual.label,
            icon: visual.icon,
            color: visual.color,
            subjectKey: visual.subjectKey,
          ),
      // Not derived from `subjects`/`_challengeZoneKeys` like the four
      // items above -- `photoguess` has no Firestore-seeded module and no
      // entry in the main subject grid. Handled directly in `onTapItem`
      // above via `_openPhotoGuess`, matching `primary_home_screen.dart`'s
      // same treatment of this card.
      ChallengeZoneItem(
        label: l10n.subjectPhotoGuess,
        icon: Icons.photo_camera_rounded,
        color: AppColors.secondary,
        subjectKey: 'photoguess',
      ),
    ];
  }

  /// Pushes [PhotoGuessScreen] directly with `photo_guess_bank.dart`'s
  /// first general-knowledge set, bypassing [_openLesson]'s Firestore/
  /// `allNurseryActivitySummaries()` lookup entirely -- there is no seeded
  /// content for this feature, by design (see `photo_guess_bank.dart`).
  void _openPhotoGuess(BuildContext context, String title, Grade? grade) {
    context.push(
      AppRoutes.lessonPhotoGuess,
      extra: PhotoGuessArgs(
        title: title,
        moduleId: photoGuessSetIdForGrade(grade),
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
  ///
  /// Awaits [learningModulesForGradeProvider]/[learningModulesProvider]'s
  /// first snapshot (`.future`) rather than reading `.valueOrNull`
  /// synchronously: on a cold read -- the very first tap for a given grade
  /// this app session, before that grade's `StreamProvider` has delivered
  /// anything yet -- `.valueOrNull` is `null` regardless of whether real
  /// content exists, which `?? const []` then silently treated as "no
  /// seeded module for this subject," routing into the hardcoded
  /// picture-matching fallback instead of the subject's real content/menu.
  /// Every later tap for that same grade hit the provider's cached value
  /// and worked correctly, which is exactly the "close and reopen fixes
  /// it" symptom this was causing.
  Future<void> _openLesson(
    BuildContext context,
    WidgetRef ref,
    Grade? grade,
    SubjectVisual subject,
  ) async {
    final List<LearningModuleModel> allModules;
    try {
      allModules = grade != null
          ? await ref.read(learningModulesForGradeProvider(grade).future)
          : await ref.read(learningModulesProvider.future);
    } catch (_) {
      // A genuine stream error (offline with no cache, permissions, etc.)
      // -- fall through to the same "no seeded module" dead-end-avoidance
      // path below rather than leaving the tap stuck mid-navigation.
      if (!context.mounted) return;
      _openFallback(context, subject);
      return;
    }
    if (!context.mounted) return;

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
      _openFallback(context, subject);
      return;
    }

    openNurseryActivity(context, activities.first, subject);
  }

  /// No matching seeded module for this grade/subject -- falls back to the
  /// picture-matching screen's own hardcoded fallback set (via a `null`
  /// pairs extra) so a tile never shows a dead end. Shared by both the
  /// genuine "nothing seeded yet" case and a stream-read error in
  /// [_openLesson], since both mean the same thing to the child: there's
  /// nothing to route to but the fallback activity.
  void _openFallback(BuildContext context, SubjectVisual subject) {
    const List<MatchPairItem>? noPairs = null;
    context.push(AppRoutes.lessonNursery, extra: (subject, noPairs));
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
/// -- Candy Core exaggerates this into a subtle 3D "wobble": a continuous
/// scale pulse plus a small alternating rotation, both driven by a sine
/// wave sampled from the parent's single shared, repeating [animation]
/// (see [_NurseryKgHomeScreenState._breatheController]'s doc comment for
/// why one shared ticker replaces what used to be one independent `Timer`
/// per tile) -- and hands press feedback off to [CandyBevelSurface]'s own
/// two-layer bevel sink/spring animation instead of the old flat
/// scale-down-on-press treatment.
class _NurseryTile extends StatelessWidget {
  const _NurseryTile({
    required this.visual,
    required this.animation,
    required this.phaseOffset,
    required this.onTap,
  });

  final SubjectVisual visual;

  /// The parent's single shared, repeating 0->1 breathing animation.
  final Animation<double> animation;

  /// This tile's position (0..1) in the shared cycle, so a row of tiles
  /// reads as a gentle staggered ripple rather than pulsing in lockstep.
  final double phaseOffset;

  final VoidCallback onTap;

  /// ±1.5° expressed as a fraction of a full turn, per the design spec's
  /// "scale 1.0→1.04 AND ±1.5° rotation" wobble motion.
  static const _wobbleTurns = 1.5 / 360;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // 3 columns on a phone-width screen instead of the old fixed 140dp
    // tile (which only ever fit 2 per row and pushed later rows/subjects
    // below the fold) -- clamped so it still looks chunky on a tablet.
    final tileSize = responsiveTileSize(context, columns: 3);

    return SizedBox(
      width: tileSize + 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              final wave = sin((animation.value + phaseOffset) * 2 * pi);
              final scale = 1.0 + 0.04 * wave;
              final wobbleTurns = _wobbleTurns * wave;
              return Transform.scale(
                scale: scale,
                child: Transform.rotate(
                  angle: wobbleTurns * 2 * pi,
                  child: child,
                ),
              );
            },
            child: CandyBevelSurface(
              faceColor: visual.color,
              bevelDepth: CandyBevelDepth.nursery,
              borderRadius: tileSize * 0.28,
              width: tileSize,
              height: tileSize,
              padding: EdgeInsets.zero,
              onTap: onTap,
              child: Icon(
                visual.icon,
                color: Colors.white,
                size: tileSize * 0.48,
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
