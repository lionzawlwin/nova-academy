import 'dart:math';

import 'package:flutter/foundation.dart' show listEquals;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/glossy_badge.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../lessons/lesson_navigation.dart';
import 'home_shared_widgets.dart';

/// Candy Core pushes the shared [AppColors.primaryPalette] 15-20% more
/// saturated for the Year 1-6 learning path, per the design spec's
/// "Primary-tier accent" palette row. `primaryPalette` has no other call
/// sites today (see the grep-before-touching check in the Mission 6 plan's
/// Task 5), but this file boosts its own copy at load time rather than
/// mutating the shared token in place, so a future second call site never
/// silently inherits this tier's saturation bump.
final List<Color> _candyPrimaryPalette = AppColors.primaryPalette
    .map((color) {
      final hsl = HSLColor.fromColor(color);
      return hsl
          .withSaturation((hsl.saturation + 0.18).clamp(0.0, 1.0))
          .toColor();
    })
    .toList(growable: false);

/// One stop on the Primary (Year 1-6) learning path.
class _PathNodeData {
  const _PathNodeData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.stars,
    required this.module,
    required this.subjectKey,
    required this.isCompleted,
    required this.isLocked,
  });

  final String title;
  final String? description;
  final IconData icon;
  final Color color;
  final int stars;
  final LearningModuleModel? module;

  /// Lowercase subject key passed to [quizQuestionsForSubject] when the
  /// learner starts this node's quiz -- either the originating
  /// [LearningModuleModel.subject], or a reasonable placeholder key when no
  /// module has been seeded yet for this grade (see [_buildNodes]).
  final String subjectKey;

  /// Whether the active child's [ChildModel.completedModuleIds] already
  /// contains [module]'s id. Completed nodes stay fully unlocked/tappable
  /// (explicit product spec -- replaying a finished lesson is allowed) and
  /// get a checkmark badge instead of/alongside the stars badge.
  final bool isCompleted;

  /// True only for a real (non-placeholder) module node the child hasn't
  /// completed yet whose immediately preceding node also isn't completed.
  /// The placeholder/empty-catalog fallback path never sets this -- there's
  /// nothing to gate when there's no real per-module progress to track.
  final bool isLocked;
}

/// The Year 1-6 student home: a scrollable, gamified path of module
/// "stops" (Duolingo-style), a live star counter, and playful-but-legible
/// typography.
class PrimaryHomeScreen extends ConsumerWidget {
  const PrimaryHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final activeProfile = ref.watch(activeProfileProvider);
    final child = activeProfile is StudentProfile ? activeProfile.child : null;
    final grade = child?.currentGrade;
    final modulesAsync = grade != null
        ? ref.watch(learningModulesForGradeProvider(grade))
        : ref.watch(learningModulesProvider);
    final locale = Localizations.localeOf(context).languageCode;

    final nodes = _buildNodes(
      l10n,
      locale,
      child?.currentGrade,
      modulesAsync.valueOrNull,
      child?.completedModuleIds.toSet() ?? const <String>{},
    );

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _HeroHeader(
                childName: child?.aliasName,
                stars: child?.totalStars ?? 0,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Text(
                  l10n.homeYourLearningPath,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: _LearningPath(
                  nodes: nodes,
                  onTapNode: (node) => _handleNodeTap(context, node),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                child: const GatekeeperEntryButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<_PathNodeData> _buildNodes(
    AppLocalizations l10n,
    String locale,
    Grade? grade,
    List<LearningModuleModel>? allModules,
    Set<String> completedModuleIds,
  ) {
    final gradeModules = (allModules ?? const <LearningModuleModel>[])
        .where((m) => grade == null || m.grade == grade)
        .toList();

    if (gradeModules.isNotEmpty) {
      return [
        for (var i = 0; i < gradeModules.length; i++)
          _PathNodeData(
            title: locale == 'my'
                ? gradeModules[i].titleMy
                : gradeModules[i].titleEn,
            description: locale == 'my'
                ? gradeModules[i].descriptionMy
                : gradeModules[i].descriptionEn,
            icon: _iconForSubject(gradeModules[i].subject),
            color: _candyPrimaryPalette[i % _candyPrimaryPalette.length],
            stars: gradeModules[i].starsReward,
            module: gradeModules[i],
            subjectKey: gradeModules[i].subject.toLowerCase(),
            isCompleted: completedModuleIds.contains(gradeModules[i].id),
            // Node 0 is never locked; every other node unlocks the moment
            // the immediately preceding node is completed (a completed
            // node is always considered unlocked too, so this never
            // re-locks a node the child has already finished).
            isLocked:
                i > 0 &&
                !completedModuleIds.contains(gradeModules[i].id) &&
                !completedModuleIds.contains(gradeModules[i - 1].id),
          ),
      ];
    }

    // No LearningModules seeded yet for this grade -- fall back to a
    // subject-only placeholder path so the screen never looks broken or
    // empty while the catalog is still being populated. The third tuple
    // element is the lowercase subject key handed to `quizQuestionsForSubject`
    // -- picked to match `mock_quiz_data.dart`'s banks where one exists, and
    // falling back to that helper's generic bank otherwise (it never throws
    // on an unrecognized key).
    final placeholders = <(String, IconData, String)>[
      (l10n.subjectMath, Icons.calculate_rounded, 'math'),
      (l10n.subjectEnglish, Icons.menu_book_rounded, 'english'),
      (l10n.subjectScience, Icons.science_rounded, 'science'),
      (l10n.subjectMyanmar, Icons.translate_rounded, 'generalknowledge'),
      (l10n.subjectReading, Icons.auto_stories_rounded, 'english'),
      (l10n.subjectWriting, Icons.edit_note_rounded, 'english'),
    ];
    return [
      for (var i = 0; i < placeholders.length; i++)
        _PathNodeData(
          title: placeholders[i].$1,
          description: null,
          icon: placeholders[i].$2,
          color: _candyPrimaryPalette[i % _candyPrimaryPalette.length],
          stars: 0,
          module: null,
          subjectKey: placeholders[i].$3,
          isCompleted: false,
          isLocked: false,
        ),
    ];
  }

  IconData _iconForSubject(String subject) {
    switch (subject.toLowerCase()) {
      case 'math':
      case 'fractions':
      case 'geometry':
      case 'algebra':
        return Icons.calculate_rounded;
      case 'english':
      case 'reading':
        return Icons.menu_book_rounded;
      case 'writing':
        return Icons.edit_note_rounded;
      case 'science':
        return Icons.science_rounded;
      case 'physics':
        return Icons.bolt_rounded;
      case 'chemistry':
        return Icons.biotech_rounded;
      case 'biology':
        return Icons.eco_rounded;
      case 'myanmar':
        return Icons.translate_rounded;
      case 'socialstudies':
      case 'social_studies':
        return Icons.public_rounded;
      case 'ict':
      case 'stem':
        return Icons.memory_rounded;
      case 'coding':
        return Icons.code_rounded;
      case 'engineering':
        return Icons.precision_manufacturing_rounded;
      case 'history':
        return Icons.history_edu_rounded;
      case 'geography':
        return Icons.public_rounded;
      case 'computing':
        return Icons.computer_rounded;
      case 'art':
        return Icons.palette_rounded;
      case 'phonics':
        return Icons.abc_rounded;
      default:
        return Icons.auto_stories_rounded;
    }
  }

  /// Gate for tapping a path node: a locked node never opens the start
  /// sheet -- it just surfaces a brief hint so a curious tap doesn't feel
  /// like a dead/broken button. Completed and unlocked-but-not-yet-started
  /// nodes both open the sheet as normal (completed nodes stay fully
  /// replayable, per product spec).
  void _handleNodeTap(BuildContext context, _PathNodeData node) {
    if (node.isLocked) {
      final l10n = AppLocalizations.of(context);
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l10n.homeLessonLocked)));
      return;
    }
    _showNodeSheet(context, node);
  }

  Future<void> _showNodeSheet(BuildContext context, _PathNodeData node) async {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    await showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: node.color,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(node.icon, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      node.title,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (node.description != null && node.description!.isNotEmpty) ...[
                const SizedBox(height: 14),
                Text(node.description!, style: theme.textTheme.bodyMedium),
              ],
              const SizedBox(height: 18),
              Row(
                children: [
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '${node.stars}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // The learning path's "hero" call-to-action -- the same
              // press-and-spring `CandyBevelSurface` treatment as the path
              // nodes above it, at the shared `CandyBevelDepth.primary`
              // preset (its doc comment names this exact CTA). Restyle-only:
              // the `onTap` body below is byte-for-byte the same
              // navigation/pop logic the old `FilledButton.icon` ran.
              SizedBox(
                width: double.infinity,
                child: CandyBevelSurface(
                  faceColor: AppColors.candyPrimary,
                  bevelDepth: CandyBevelDepth.primary,
                  borderRadius: AppTheme.radiusLarge,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  onTap: () {
                    Navigator.of(sheetContext).pop();
                    pushLessonForModule(
                      context,
                      module: node.module,
                      title: node.title,
                      subjectKey: node.subjectKey,
                      stars: node.stars > 0 ? node.stars : 10,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.play_arrow_rounded, color: Colors.white),
                      const SizedBox(width: 8),
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            l10n.actionStart,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
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

class _HeroHeader extends StatelessWidget {
  const _HeroHeader({required this.childName, required this.stars});

  final String? childName;
  final int stars;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppGradients.hero(theme.colorScheme),
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.floating(theme.colorScheme.primary),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SwitchProfileButton(color: Colors.white),
                    LanguageToggleButton(color: Colors.white),
                  ],
                ),
                const SizedBox(height: 4),
                Flexible(
                  child: Text(
                    l10n.dashboardWelcomeMessage(childName ?? l10n.appName),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(18),
            ),
            child: AnimatedStarBadge(
              stars: stars,
              // Candy Core's `AnimatedStarBadge` now renders the digit count
              // centered *inside* the `GlossyBadge`'s Gold Medal face
              // (previously it sat beside a small star icon on this header's
              // own indigo gradient, where white text was fine) -- white on
              // Gold Medal measures ~1.5:1 contrast, badly failing WCAG AA
              // (the exact risk flagged in the Mission 6 design spec's
              // "Known risks" section). Dark ink text matches every other
              // gold-badge digit count restyled this mission (see
              // `_PathNode`'s node badge below and `mcq_quiz_screen.dart`'s
              // results badge) and measures ~10.5:1.
              textColor: AppColors.charcoalNavy,
              iconSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}

/// A vertically scrollable, hand-drawn-feeling path of [nodes], each one
/// offset left/right along a sine curve so the whole thing reads as a
/// winding trail rather than a plain list.
class _LearningPath extends StatelessWidget {
  const _LearningPath({required this.nodes, required this.onTapNode});

  final List<_PathNodeData> nodes;
  final void Function(_PathNodeData node) onTapNode;

  static const double _rowHeight = 148;

  /// Must match `_PathNodeState`'s outer `SizedBox(width: ...)` -- the
  /// painter needs this to resolve each node's *actual* rendered center-x
  /// from the same `Align(alignment: Alignment(x, 0))` math the nodes
  /// themselves are positioned with (an `Align` centers its child within
  /// `(box size - child size)`, not the full box, so the painter has to
  /// account for the child's width to land on the same pixel).
  static const double _nodeWidth = 128;

  /// Per-node horizontal weave offset, in `Alignment` units (-1..1). Bumped
  /// from the original 0.62 now that the dashed line actually follows this
  /// curve (see `_DashedPathPainter`) -- 0.62 read as too subtle once the
  /// line threads through the real node positions instead of running
  /// straight down the center.
  double _xFor(int index) => sin(index * 1.3) * 0.78;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalHeight = nodes.length * _rowHeight;
    final xFractions = [for (var i = 0; i < nodes.length; i++) _xFor(i)];

    return SizedBox(
      height: totalHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _DashedPathPainter(
                color: theme.colorScheme.outlineVariant,
                xFractions: xFractions,
                rowHeight: _rowHeight,
                nodeWidth: _nodeWidth,
              ),
            ),
          ),
          for (var i = 0; i < nodes.length; i++)
            Positioned(
              top: i * _rowHeight,
              left: 0,
              right: 0,
              height: _rowHeight,
              child: Align(
                alignment: Alignment(xFractions[i], 0),
                child: _PathNode(
                  data: nodes[i],
                  index: i,
                  onTap: () => onTapNode(nodes[i]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Draws the dashed trail connecting every path node's real screen-space
/// center point in order, in one smooth winding curve -- rather than the
/// old single straight line down the canvas's horizontal center, which
/// ignored where the (already sine-weaved) nodes actually sat.
class _DashedPathPainter extends CustomPainter {
  const _DashedPathPainter({
    required this.color,
    required this.xFractions,
    required this.rowHeight,
    required this.nodeWidth,
  });

  final Color color;

  /// Each node's `Alignment` x-fraction (-1..1), one per node, same order
  /// as the path.
  final List<double> xFractions;
  final double rowHeight;
  final double nodeWidth;

  /// Resolves every node's actual rendered center point for this canvas
  /// [size], mirroring `Align(alignment: Alignment(x, 0))`'s own math: the
  /// child's center sits at `boxCenter + x * (boxSize - childSize) / 2`
  /// horizontally, and at the vertical center of its `rowHeight`-tall row.
  List<Offset> _nodeCenters(Size size) {
    final halfSpan = (size.width - nodeWidth) / 2;
    return [
      for (var i = 0; i < xFractions.length; i++)
        Offset(
          size.width / 2 + xFractions[i] * halfSpan,
          i * rowHeight + rowHeight / 2,
        ),
    ];
  }

  /// Builds a single smooth curve threading through every point in
  /// [points], in order, via a Catmull-Rom-to-cubic-Bezier conversion
  /// (uniform, tension 1/6) -- unlike a straight polyline, this reads as a
  /// genuinely playful winding S-curve rather than sharp zig-zags between
  /// nodes.
  Path _smoothPathThrough(List<Offset> points) {
    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (var i = 0; i < points.length - 1; i++) {
      final p0 = i == 0 ? points[i] : points[i - 1];
      final p1 = points[i];
      final p2 = points[i + 1];
      final p3 = i + 2 < points.length ? points[i + 2] : points[i + 1];
      final c1 = p1 + (p2 - p0) / 6;
      final c2 = p2 - (p3 - p1) / 6;
      path.cubicTo(c1.dx, c1.dy, c2.dx, c2.dy, p2.dx, p2.dy);
    }
    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (xFractions.length < 2) return;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    const dashLength = 10.0;
    const gap = 8.0;

    final path = _smoothPathThrough(_nodeCenters(size));
    for (final metric in path.computeMetrics()) {
      var distance = 0.0;
      while (distance < metric.length) {
        final end = min(distance + dashLength, metric.length);
        canvas.drawPath(metric.extractPath(distance, end), paint);
        distance += dashLength + gap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DashedPathPainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.rowHeight != rowHeight ||
      oldDelegate.nodeWidth != nodeWidth ||
      !listEquals(oldDelegate.xFractions, xFractions);
}

/// One winding-path stop, rebuilt on [CandyBevelSurface] per the design
/// spec's Primary per-tier note ("every path node becomes a true 3D button
/// ... rather than a flat circular icon avatar"): the sine-wave *position*
/// this node is placed at (owned by [_LearningPath]) and the dashed
/// connector line underneath it (`_DashedPathPainter`) are untouched --
/// only this node's own surface changes.
///
/// Also wires the spec's "newly-unlocked path nodes ... 'drop and bounce'
/// entrance" motion: every node plays the entrance once on first load,
/// staggered 60ms apart by [index] -- the literal "on first load" case the
/// spec describes. [_PathNodeData.isLocked] renders the face desaturated
/// with a small lock badge and keeps `onTap` wired (the parent screen's tap
/// handler shows a friendly hint instead of opening the start sheet for a
/// locked node, rather than the tap simply doing nothing).
/// [_PathNodeData.isCompleted] nodes stay full color and fully tappable --
/// replaying a finished lesson is allowed -- and get a small checkmark
/// badge alongside the stars badge.
class _PathNode extends StatefulWidget {
  const _PathNode({
    required this.data,
    required this.index,
    required this.onTap,
  });

  final _PathNodeData data;
  final int index;
  final VoidCallback onTap;

  @override
  State<_PathNode> createState() => _PathNodeState();
}

class _PathNodeState extends State<_PathNode>
    with SingleTickerProviderStateMixin {
  static const double _faceSize = 84;
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

  // The spec's "1.0 -> 1.1 -> 1.0 scale pop" -- a plain linear split of the
  // same controller drives this (independent of `_drop`'s elastic overshoot
  // curve, which only governs the translateY "drop").
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
    final theme = Theme.of(context);
    final data = widget.data;

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
      child: SizedBox(
        width: 128,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CandyBevelSurface(
                  // Locked nodes desaturate to a neutral grey face (the
                  // same `outlineVariant` token the path line itself uses)
                  // rather than a dimmed copy of their subject color, so
                  // "locked" reads unambiguously at a glance instead of
                  // just looking like a duller version of the same hue.
                  faceColor: data.isLocked
                      ? theme.colorScheme.outlineVariant
                      : data.color,
                  bevelDepth: CandyBevelDepth.primary,
                  borderRadius: _faceSize / 2,
                  width: _faceSize,
                  height: _faceSize,
                  padding: EdgeInsets.zero,
                  border: Border.all(
                    color: theme.colorScheme.surface,
                    width: 4,
                  ),
                  // Stays wired (not null) even while locked -- the parent
                  // screen's tap handler is the one that decides whether to
                  // open the start sheet or show a "complete the previous
                  // lesson first" hint, so a locked node's tap still gives
                  // the child feedback instead of behaving like a dead
                  // button.
                  onTap: widget.onTap,
                  child: Center(
                    child: Icon(
                      data.icon,
                      color: Colors.white.withValues(
                        alpha: data.isLocked ? 0.75 : 1,
                      ),
                      size: 36,
                    ),
                  ),
                ),
                // Per the spec's Primary per-tier note: "star-count badges
                // on nodes use the full GlossyBadge treatment". Positioned
                // off the *face* layer's bottom-right corner -- the face
                // sits `CandyBevelDepth.primary` above this surface's own
                // bottom edge at rest (the bevel-depth's worth of shadow
                // peeking out below it), so the badge's `bottom` offset
                // accounts for that gap to land in the same visual spot the
                // old flat-avatar badge sat in.
                if (data.stars > 0)
                  Positioned(
                    right: -4,
                    bottom: CandyBevelDepth.primary + 4,
                    child: GlossyBadge(
                      size: 30,
                      faceColor: AppColors.goldMedal,
                      value: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${data.stars}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: AppColors.charcoalNavy,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                // Completed nodes keep full color and stay tappable (so a
                // child can replay any lesson) -- this checkmark badge is
                // the "still completed" affordance, sitting in the opposite
                // top-right corner so it never collides with the star badge
                // below it.
                if (data.isCompleted)
                  Positioned(
                    right: -4,
                    top: -4,
                    child: GlossyBadge(
                      size: 26,
                      faceColor: AppColors.secondary,
                      value: const Icon(
                        Icons.check_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                // Small lock overlay -- pairs with the desaturated face
                // above to make "not yet unlocked" unambiguous even before
                // a child reads/taps anything.
                if (data.isLocked)
                  Positioned(
                    left: -4,
                    top: -4,
                    child: GlossyBadge(
                      size: 26,
                      faceColor: theme.colorScheme.outline,
                      value: const Icon(
                        Icons.lock_rounded,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            // A separate tap target for the label -- `CandyBevelSurface`
            // above already handles taps (and its press animation) on the
            // node itself; this just keeps the whole column tappable like
            // the original single `InkWell` did.
            GestureDetector(
              onTap: widget.onTap,
              behavior: HitTestBehavior.opaque,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.title,
                  maxLines: 1,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
