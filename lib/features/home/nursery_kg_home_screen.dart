import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/nursery_kg_activity_bank.dart';
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
      color: AppColors.nurseryPalette[0],
      subjectKey: 'phonics',
    ),
    SubjectVisual(
      label: l10n.subjectMath,
      icon: Icons.filter_2_rounded,
      color: AppColors.nurseryPalette[1],
      subjectKey: 'math',
    ),
    SubjectVisual(
      label: l10n.subjectArt,
      icon: Icons.palette_rounded,
      color: AppColors.nurseryPalette[2],
      subjectKey: 'art',
    ),
    SubjectVisual(
      label: l10n.subjectGeneralKnowledge,
      icon: Icons.emoji_objects_rounded,
      color: AppColors.nurseryPalette[3],
      subjectKey: 'generalknowledge',
    ),
    SubjectVisual(
      label: l10n.subjectStem,
      icon: Icons.science_rounded,
      color: AppColors.nurseryPalette[4],
      subjectKey: 'stem',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final activeProfile = ref.watch(activeProfileProvider);
    final child = activeProfile is StudentProfile ? activeProfile.child : null;
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

  /// Looks up the real seeded module for [grade]/[subject.subjectKey] (see
  /// `nursery_kg_activity_bank.dart`) and launches [NurseryLessonScreen]
  /// with its content. Falls back to `null` pairs (the lesson screen's own
  /// hardcoded fallback set) whenever no matching module has been seeded
  /// yet -- e.g. no connected Firebase project, or "Seed Demo Data" hasn't
  /// been run -- so a tile never shows a dead end.
  void _openLesson(
    BuildContext context,
    WidgetRef ref,
    Grade? grade,
    SubjectVisual subject,
  ) {
    final allModules =
        ref.read(learningModulesProvider).valueOrNull ?? const [];
    final match = allModules
        .where((m) => m.grade == grade && m.subject == subject.subjectKey)
        .toList();
    final pairs = match.isEmpty ? null : matchPairsForModule(match.first.id);

    context.push(AppRoutes.lessonNursery, extra: (subject, pairs));
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
/// (implemented purely with [AnimatedScale] reacting to a periodically
/// flipped boolean -- no [AnimationController] needed) and snaps down on
/// press for tactile, game-like feedback.
class _NurseryTile extends StatefulWidget {
  const _NurseryTile({required this.visual, required this.onTap});

  final SubjectVisual visual;
  final VoidCallback onTap;

  @override
  State<_NurseryTile> createState() => _NurseryTileState();
}

class _NurseryTileState extends State<_NurseryTile> {
  bool _pressed = false;
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
    final scale = _pressed ? 0.85 : (_breatheUp ? 1.06 : 1.0);
    final visual = widget.visual;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: scale,
        duration: Duration(milliseconds: _pressed ? 90 : 650),
        curve: _pressed ? Curves.easeOut : Curves.easeInOutSine,
        child: SizedBox(
          width: 152,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [visual.color, visual.color.withValues(alpha: 0.7)],
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: AppShadows.floating(visual.color),
                ),
                child: Icon(visual.icon, color: Colors.white, size: 68),
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
        ),
      ),
    );
  }
}
