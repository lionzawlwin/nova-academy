import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/glossy_badge.dart';

/// Bilingual UI-chrome copy for [AchievementShareCard], following the same
/// local `_t()` convention as `mcq_quiz_screen.dart`/`fill_in_blank_screen.dart`
/// (both documented exceptions to the ARB requirement) -- kept local here too
/// since this file is a small sibling of those two, not app chrome.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// A compact, branded shareable "achievement card" -- the image a student
/// shares to their device's native share sheet after a standout (perfect)
/// quiz/lesson result. Self-wraps in a [RepaintBoundary] keyed by
/// [repaintKey] so the caller (a results screen) only has to place this
/// widget and later call [shareAchievementCard] with the same key -- no
/// extra `RepaintBoundary` needed at the call site.
///
/// Deliberately a static snapshot, not a new animated component: no count-up,
/// no confetti -- those live on the on-screen results widgets
/// (`_ResultsStarBadge` / `AnimatedStarBadge`) already. This widget only
/// needs to look good the instant it's captured.
class AchievementShareCard extends StatelessWidget {
  const AchievementShareCard({
    super.key,
    required this.repaintKey,
    required this.starsEarned,
    this.childAliasName,
    this.currentStreakDays = 0,
  });

  /// Identifies the [RepaintBoundary] this widget wraps itself in, so
  /// [shareAchievementCard] can find it later via
  /// `repaintKey.currentContext?.findRenderObject()`.
  final GlobalKey repaintKey;

  /// Stars earned in the session that triggered this share.
  final int starsEarned;

  /// The active student's alias name, e.g. from
  /// `StudentProfile.child.aliasName`. `null` when there's no real child to
  /// credit (a self-profile preview), in which case a generic phrase is
  /// shown instead -- never a blank/awkward name slot.
  final String? childAliasName;

  /// The child's current streak in days
  /// (`ChildModel.currentStreakDays`). The flame/day-count row is omitted
  /// entirely when this is `0`, rather than shown as "0 day streak".
  final int currentStreakDays;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final name = childAliasName?.trim();
    final hasName = name != null && name.isNotEmpty;

    return RepaintBoundary(
      key: repaintKey,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: AppGradients.hero(theme.colorScheme),
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          boxShadow: AppShadows.floating(
            theme.colorScheme.primary,
            brightness: theme.brightness,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.auto_awesome_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(width: 6),
                Text(
                  'Nova Academy',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Icon(
              Icons.emoji_events_rounded,
              color: Colors.white,
              size: 44,
            ),
            const SizedBox(height: 12),
            Text(
              _t(context, 'Perfect Score!', 'အမှတ်အပြည့်ရရှိပါပြီ!'),
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              hasName
                  ? _t(context, '$name aced it!', '$name အမှတ်အပြည့်ရခဲ့သည်!')
                  : _t(
                      context,
                      'A Nova Academy learner aced it!',
                      'Nova Academy သင်ယူသူတစ်ဦး အမှတ်အပြည့်ရခဲ့သည်!',
                    ),
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                GlossyBadge(
                  size: 52,
                  faceColor: AppColors.goldMedal,
                  value: Text(
                    '$starsEarned',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.charcoalNavy,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  _t(context, 'stars earned', 'ကြယ်ရရှိမှု'),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (currentStreakDays > 0) ...[
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.local_fire_department_rounded,
                    color: AppColors.goldMedal,
                    size: 26,
                  ),
                  Text(
                    _t(
                      context,
                      '$currentStreakDays day streak',
                      'ရက် $currentStreakDays ဆက်တိုက်',
                    ),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Captures the [AchievementShareCard] identified by [repaintKey] as a PNG
/// and hands it to the device's native share sheet alongside [shareText],
/// via the resolved `share_plus: ^11.0.0` (11.1.0) API --
/// `SharePlus.instance.share(ShareParams(...))`. That version's static
/// `Share.share`/`Share.shareXFiles` helpers still exist but are
/// `@Deprecated('Use SharePlus.instance.share() instead')`, so this uses the
/// current instance API directly rather than the deprecated shim.
///
/// The image is shared as an in-memory `XFile.fromData(...)` (from
/// `cross_file`, a transitive `share_plus` dependency re-exported by
/// `package:share_plus/share_plus.dart`) -- no temp file, no `path_provider`
/// dependency needed.
///
/// Wrapped in try/catch so a capture/share failure (e.g. platform doesn't
/// support sharing, widget not laid out yet) never throws upward and never
/// blocks the results screen -- it fails silently (logged via `debugPrint`),
/// matching this codebase's "telemetry/best-effort never blocks the user"
/// convention elsewhere (see `McqQuizScreen._recordCompletion`).
Future<void> shareAchievementCard(
  GlobalKey repaintKey, {
  required String shareText,
}) async {
  try {
    final renderObject = repaintKey.currentContext?.findRenderObject();
    if (renderObject is! RenderRepaintBoundary) return;

    // 2.5x balances shareable image quality against payload size -- well
    // within the range platform share sheets/social apps expect for a small
    // card like this.
    final image = await renderObject.toImage(pixelRatio: 2.5);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData == null) return;
    final bytes = byteData.buffer.asUint8List();

    await SharePlus.instance.share(
      ShareParams(
        text: shareText,
        files: [
          XFile.fromData(bytes, mimeType: 'image/png', name: 'achievement.png'),
        ],
      ),
    );
  } catch (e, st) {
    debugPrint('[shareAchievementCard] FAILED: $e');
    debugPrint('[shareAchievementCard] stack trace:\n$st');
  }
}
