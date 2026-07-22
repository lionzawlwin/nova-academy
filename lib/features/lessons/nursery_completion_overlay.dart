import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../home/home_shared_widgets.dart';

/// Shared "Great Job!" full-screen completion state for the five new
/// Nursery/KG interactive widget types (Listening, Memory, Flashcards,
/// Storytelling, Rhymes). `nursery_lesson_screen.dart`'s original
/// picture-matching game keeps its own local `_CompletionOverlay` copy (see
/// that file's doc comments for why local duplication was chosen there);
/// extracting a shared version here instead avoids repeating the same
/// ~100-line celebration widget five more times across brand-new files that
/// have no prior local-copy precedent to stay consistent with.
class NurseryCompletionOverlay extends StatelessWidget {
  const NurseryCompletionOverlay({
    super.key,
    required this.languageCode,
    required this.stars,
    required this.onDone,
    this.titleEn = 'Great Job!',
    this.titleMy = 'တော်လိုက်တာ!',
    this.subtitleEn = 'You finished the activity!',
    this.subtitleMy = 'လှုပ်ရှားမှုကို ပြီးမြောက်အောင် လုပ်နိုင်ပါပြီ!',
  });

  final String languageCode;
  final int stars;
  final VoidCallback onDone;
  final String titleEn;
  final String titleMy;
  final String subtitleEn;
  final String subtitleMy;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = languageCode == 'my' ? titleMy : titleEn;
    final subtitle = languageCode == 'my' ? subtitleMy : subtitleEn;
    final doneLabel = languageCode == 'my' ? 'ပြီးပါပြီ' : 'Done';

    return Positioned.fill(
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutBack,
        builder: (context, t, child) {
          final clamped = t.clamp(0.0, 1.0);
          return Opacity(
            opacity: clamped,
            child: Transform.scale(scale: 0.85 + 0.15 * clamped, child: child),
          );
        },
        child: Container(
          color: Colors.black.withValues(alpha: 0.45),
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              boxShadow: AppShadows.floating(AppColors.accent),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _CompletionConfetti(
                        particleCount: 26,
                        colors: const [
                          AppColors.accent,
                          AppColors.secondary,
                          AppColors.primary,
                          Color(0xFFFF6F91),
                        ],
                      ),
                      const Icon(
                        Icons.emoji_events_rounded,
                        color: AppColors.accent,
                        size: 76,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(subtitle, style: theme.textTheme.titleMedium),
                ),
                const SizedBox(height: 16),
                AnimatedStarBadge(stars: stars, iconSize: 34),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: onDone,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        doneLabel,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Shared top chrome for the five new interactive widget screens: a close
/// button plus an optional pill-shaped subject label -- byte-for-byte the
/// same layout `nursery_lesson_screen.dart` and
/// `nursery_activity_browser_screen.dart` each keep as a private `_TopBar`,
/// extracted here once new call sites make it worth sharing.
class NurseryLessonTopBar extends StatelessWidget {
  const NurseryLessonTopBar({super.key, this.subjectLabel, this.onClose});

  final String? subjectLabel;

  /// Defaults to popping the current route when omitted.
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.close_rounded, color: Colors.white),
            tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
            onPressed: onClose ?? () => Navigator.of(context).pop(),
          ),
          Expanded(
            child: subjectLabel == null
                ? const SizedBox.shrink()
                : Center(
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
                          subjectLabel!,
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

class _ConfettiParticle {
  const _ConfettiParticle({
    required this.angle,
    required this.distance,
    required this.size,
    required this.color,
  });

  final double angle;
  final double distance;
  final double size;
  final Color color;
}

/// Local copy of `nursery_lesson_screen.dart`'s pure-Flutter confetti burst
/// (no external confetti package) -- see that file's `_ConfettiBurst` doc
/// comment for the original rationale, which applies unchanged here.
class _CompletionConfetti extends StatefulWidget {
  const _CompletionConfetti({this.particleCount = 14, required this.colors});

  final int particleCount;
  final List<Color> colors;

  @override
  State<_CompletionConfetti> createState() => _CompletionConfettiState();
}

class _CompletionConfettiState extends State<_CompletionConfetti>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..forward();
  late final List<_ConfettiParticle> _particles = _generateParticles();

  List<_ConfettiParticle> _generateParticles() {
    final random = Random();
    return List.generate(widget.particleCount, (i) {
      final baseAngle = (2 * pi / widget.particleCount) * i;
      final angle = baseAngle + (random.nextDouble() - 0.5) * 0.6;
      final distance = 42.0 + random.nextDouble() * 40;
      final size = 6.0 + random.nextDouble() * 8;
      final color = widget.colors[random.nextInt(widget.colors.length)];
      return _ConfettiParticle(
        angle: angle,
        distance: distance,
        size: size,
        color: color,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final t = Curves.easeOut.transform(_controller.value);
        final fade = (1 - t).clamp(0.0, 1.0);
        return Stack(
          alignment: Alignment.center,
          children: [
            for (final particle in _particles)
              Opacity(
                opacity: fade,
                child: Transform.translate(
                  offset: Offset(
                    cos(particle.angle) * particle.distance * t,
                    sin(particle.angle) * particle.distance * t,
                  ),
                  child: Transform.scale(
                    scale: (1 - t * 0.35).clamp(0.0, 1.0),
                    child: Container(
                      width: particle.size,
                      height: particle.size,
                      decoration: BoxDecoration(
                        color: particle.color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
