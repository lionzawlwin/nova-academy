import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/primary_quiz_screen.dart';
import 'home_shared_widgets.dart';

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
    final modulesAsync = ref.watch(learningModulesProvider);
    final locale = Localizations.localeOf(context).languageCode;

    final nodes = _buildNodes(
      l10n,
      locale,
      child?.currentGrade,
      modulesAsync.valueOrNull,
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
                  onTapNode: (node) => _showNodeSheet(context, node),
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
            color:
                AppColors.primaryPalette[i % AppColors.primaryPalette.length],
            stars: gradeModules[i].starsReward,
            module: gradeModules[i],
            subjectKey: gradeModules[i].subject.toLowerCase(),
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
          color: AppColors.primaryPalette[i % AppColors.primaryPalette.length],
          stars: 0,
          module: null,
          subjectKey: placeholders[i].$3,
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
        return Icons.memory_rounded;
      case 'art':
        return Icons.palette_rounded;
      case 'phonics':
        return Icons.abc_rounded;
      default:
        return Icons.auto_stories_rounded;
    }
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
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: Text(l10n.actionStart),
                  onPressed: () {
                    Navigator.of(sheetContext).pop();
                    context.push(
                      AppRoutes.lessonPrimaryQuiz,
                      extra: PrimaryQuizArgs(
                        title: node.title,
                        subject: node.subjectKey,
                        stars: node.stars > 0 ? node.stars : 10,
                        moduleId: node.module?.id,
                      ),
                    );
                  },
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
                const SwitchProfileButton(color: Colors.white),
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
              textColor: Colors.white,
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

  double _xFor(int index) => sin(index * 1.3) * 0.62;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalHeight = nodes.length * _rowHeight;

    return SizedBox(
      height: totalHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _DashedPathPainter(
                color: theme.colorScheme.outlineVariant,
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
                alignment: Alignment(_xFor(i), 0),
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

class _DashedPathPainter extends CustomPainter {
  const _DashedPathPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    const dashHeight = 10.0;
    const gap = 8.0;
    final x = size.width / 2;
    var y = 0.0;
    while (y < size.height) {
      canvas.drawLine(Offset(x, y), Offset(x, y + dashHeight), paint);
      y += dashHeight + gap;
    }
  }

  @override
  bool shouldRepaint(covariant _DashedPathPainter oldDelegate) =>
      oldDelegate.color != color;
}

class _PathNode extends StatelessWidget {
  const _PathNode({
    required this.data,
    required this.index,
    required this.onTap,
  });

  final _PathNodeData data;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: SizedBox(
        width: 128,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [data.color, data.color.withValues(alpha: 0.7)],
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.colorScheme.surface,
                      width: 4,
                    ),
                    boxShadow: AppShadows.floating(
                      data.color,
                      brightness: theme.brightness,
                    ),
                  ),
                  child: Icon(data.icon, color: Colors.white, size: 36),
                ),
                if (data.stars > 0)
                  Positioned(
                    right: -4,
                    bottom: -4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(999),
                        boxShadow: AppShadows.card(theme.brightness),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                            size: 14,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '${data.stars}',
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                data.title,
                maxLines: 1,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
