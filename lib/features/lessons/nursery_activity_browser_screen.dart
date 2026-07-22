import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../models/child_model.dart';
import '../home/home_shared_widgets.dart';
import 'nursery_activity_kind.dart';
import 'open_nursery_activity.dart';

/// Shown when [NurseryKgHomeScreen] finds 2+ authored activities (of any
/// [NurseryActivityKind]) for the active child's grade + a tapped subject,
/// instead of silently opening only the first one (see
/// `NurseryKgHomeScreen._openLesson`'s doc comment for the reachability bug
/// this closes). Presents every matching activity as its own big, bouncy
/// tile so a child can pick which one to play.
///
/// Same zero-reading design language as the home screen's subject grid
/// (see [NurseryKgHomeScreen]'s own doc comment): each tile carries meaning
/// through its [NurseryActivitySummary.emoji] plus one short bilingual
/// title, never dense text. Tapping a tile hands off to
/// [openNurseryActivity], the same kind-dispatch routing helper
/// `_openLesson` itself uses for the single-match case.
class NurseryActivityBrowserScreen extends StatelessWidget {
  const NurseryActivityBrowserScreen({
    super.key,
    required this.grade,
    required this.subject,
    required this.activities,
  });

  /// The active child's grade -- carried along for context/consistency with
  /// how the caller resolved [activities]; this screen itself doesn't need
  /// to re-filter by it since [activities] is already grade-scoped.
  final Grade grade;

  final SubjectVisual subject;

  /// The matching activities for [grade] + [subject], in index order.
  final List<NurseryActivitySummary> activities;

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppGradients.nurserySky),
        child: SafeArea(
          child: Column(
            children: [
              _TopBar(subjectLabel: subject.label),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 22,
                    runSpacing: 22,
                    children: [
                      for (var i = 0; i < activities.length; i++)
                        _ActivityTile(
                          activity: activities[i],
                          color: subject.color,
                          languageCode: lc,
                          index: i,
                          onTap: () => openNurseryActivity(
                            context,
                            activities[i],
                            subject,
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

/// Close button + a small pill showing the already-localized subject label
/// -- mirrors `NurseryLessonScreen`'s private `_TopBar` chip so this screen
/// reads as part of the same flow rather than a visually distinct detour.
class _TopBar extends StatelessWidget {
  const _TopBar({required this.subjectLabel});

  final String subjectLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.close_rounded, color: Colors.white),
            tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
            onPressed: () => Navigator.of(context).pop(),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    subjectLabel,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}

/// One giant, bouncy activity tile -- same 140x140 [CandyBevelSurface]
/// footprint as [NurseryKgHomeScreen]'s `_NurseryTile`, but faced with the
/// activity's own [NurseryActivitySummary.emoji] instead of a fixed subject
/// icon, plus a short bilingual title beneath it, since a child needs some
/// way to tell same-subject activities apart. Drops in with a staggered
/// elastic entrance so a row of new tiles feels alive rather than static,
/// echoing the "bouncy" idle language used across the rest of the
/// Nursery/KG tier.
class _ActivityTile extends StatefulWidget {
  const _ActivityTile({
    required this.activity,
    required this.color,
    required this.languageCode,
    required this.index,
    required this.onTap,
  });

  final NurseryActivitySummary activity;
  final Color color;
  final String languageCode;
  final int index;
  final VoidCallback onTap;

  @override
  State<_ActivityTile> createState() => _ActivityTileState();
}

class _ActivityTileState extends State<_ActivityTile>
    with SingleTickerProviderStateMixin {
  static const _entranceDuration = Duration(milliseconds: 600);
  static const _staggerStep = Duration(milliseconds: 80);

  late final AnimationController _entranceController = AnimationController(
    vsync: this,
    duration: _entranceDuration,
  );
  late final Animation<double> _bounce = CurvedAnimation(
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
    final activity = widget.activity;
    final emoji = activity.emoji;
    final title = activity.title(widget.languageCode);
    // Same 3-column responsive sizing as `NurseryKgHomeScreen`'s subject
    // grid -- the old fixed 140dp tile only fit 2 per row on a phone.
    final tileSize = responsiveTileSize(context, columns: 3);

    return AnimatedBuilder(
      animation: _entranceController,
      builder: (context, child) {
        return Transform.scale(
          scale: 0.6 + 0.4 * _bounce.value,
          child: Opacity(
            opacity: _entranceController.value.clamp(0.0, 1.0),
            child: child,
          ),
        );
      },
      child: SizedBox(
        width: tileSize + 12,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CandyBevelSurface(
              faceColor: widget.color,
              bevelDepth: CandyBevelDepth.nursery,
              borderRadius: tileSize * 0.28,
              width: tileSize,
              height: tileSize,
              padding: EdgeInsets.zero,
              onTap: widget.onTap,
              child: Text(emoji, style: TextStyle(fontSize: tileSize * 0.48)),
            ),
            const SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
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
    );
  }
}
