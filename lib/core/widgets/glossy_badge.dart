import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// The two silhouettes [GlossyBadge] can render itself as, per the design
/// spec's "Badge/medal iconography" section ("a circular or shield-shaped
/// two-tone shape").
enum GlossyBadgeShape {
  /// A plain circle -- the default, used for star-count badges.
  circle,

  /// A rounded medal/shield outline -- for achievement-style badges that
  /// want a more "trophy" silhouette than a plain circle.
  shield,
}

/// Nova Academy's shared "Candy Core" glossy reward-icon widget -- the
/// die-cast-badge treatment the design spec calls for on star counts,
/// streak flames, and achievement medals (see the spec's "Badge/medal
/// iconography" section).
///
/// A two-tone shape: a darker [rimColor] fills the full [size], a lighter
/// [faceColor] fills an inset copy of the same shape, and a fixed 45-degree
/// diagonal white-to-transparent gradient sheen is clipped to the shape's
/// top-left third so every badge reads as glossy die-cast plastic rather
/// than a flat colored disc.
///
/// This widget only builds the badge *shape* -- it does not itself own any
/// count-up/confetti motion. [AnimatedStarBadge]
/// (`lib/features/home/home_shared_widgets.dart`) is rewired to render
/// through this as its face in a later Mission 6 task.
class GlossyBadge extends StatelessWidget {
  const GlossyBadge({
    super.key,
    required this.value,
    required this.faceColor,
    this.rimColor,
    this.size = 56,
    this.shape = GlossyBadgeShape.circle,
    this.rimThickness = 4,
  });

  /// The content shown centered on the badge's face -- e.g. a star-count
  /// `Text` or an achievement `Icon`. Kept generic (`Widget`, not
  /// `int`/`IconData`) so callers can pass either without this widget
  /// needing to know which.
  final Widget value;

  /// The lighter, fully-saturated fill for the inset face shape.
  final Color faceColor;

  /// The darker fill for the outer rim. Defaults to
  /// `AppColors.bevelShadowFor(faceColor)` so the rim always derives from
  /// the face color rather than using a generic gray, matching the two-layer
  /// bevel construction's "every shadow derives from its own face color"
  /// rule elsewhere in Candy Core.
  final Color? rimColor;

  /// Overall width/height of the badge, in logical pixels.
  final double size;

  /// Circle (default) or shield silhouette -- see [GlossyBadgeShape].
  final GlossyBadgeShape shape;

  /// How much of [size] the darker rim occupies around the inset face, in
  /// logical pixels.
  final double rimThickness;

  @override
  Widget build(BuildContext context) {
    final resolvedRim = rimColor ?? AppColors.bevelShadowFor(faceColor);
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _GlossyBadgePainter(
          shape: shape,
          faceColor: faceColor,
          rimColor: resolvedRim,
          rimThickness: rimThickness,
        ),
        child: Center(child: value),
      ),
    );
  }
}

class _GlossyBadgePainter extends CustomPainter {
  _GlossyBadgePainter({
    required this.shape,
    required this.faceColor,
    required this.rimColor,
    required this.rimThickness,
  });

  final GlossyBadgeShape shape;
  final Color faceColor;
  final Color rimColor;
  final double rimThickness;

  Path _shapePath(Size size) {
    switch (shape) {
      case GlossyBadgeShape.circle:
        return Path()..addOval(Rect.fromLTWH(0, 0, size.width, size.height));
      case GlossyBadgeShape.shield:
        return _shieldPath(size);
    }
  }

  /// A rounded medal/shield outline: flat-ish rounded top, tapering to a
  /// gently rounded point at the bottom.
  Path _shieldPath(Size size) {
    final w = size.width;
    final h = size.height;
    return Path()
      ..moveTo(w * 0.5, 0)
      ..cubicTo(w * 0.85, 0, w, h * 0.12, w, h * 0.14)
      ..lineTo(w, h * 0.46)
      ..cubicTo(w, h * 0.78, w * 0.78, h * 0.94, w * 0.5, h)
      ..cubicTo(w * 0.22, h * 0.94, 0, h * 0.78, 0, h * 0.46)
      ..lineTo(0, h * 0.14)
      ..cubicTo(0, h * 0.12, w * 0.15, 0, w * 0.5, 0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Size size) {
    // Rim layer: the darker shape at full size.
    canvas.drawPath(_shapePath(size), Paint()..color = rimColor);

    // Face layer: the lighter shape inset by `rimThickness` on every side,
    // so a ring of `rimColor` is left showing around it.
    canvas.save();
    canvas.translate(rimThickness, rimThickness);
    final faceSize = Size(
      size.width - rimThickness * 2,
      size.height - rimThickness * 2,
    );
    final facePath = _shapePath(faceSize);
    canvas.drawPath(facePath, Paint()..color = faceColor);

    // Glossy sheen: a fixed 45-degree diagonal white-to-transparent
    // gradient, clipped to both the face shape and a top-left-third
    // triangle so it reads as a highlight swipe rather than a full
    // overlay, per the spec's badge/medal treatment.
    canvas.save();
    canvas.clipPath(facePath);
    final sheenPath = Path()
      ..moveTo(0, 0)
      ..lineTo(faceSize.width * 0.62, 0)
      ..lineTo(0, faceSize.height * 0.62)
      ..close();
    final sheenPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withValues(alpha: 0.65),
          Colors.white.withValues(alpha: 0.0),
        ],
      ).createShader(Rect.fromLTWH(0, 0, faceSize.width, faceSize.height));
    canvas.drawPath(sheenPath, sheenPaint);
    canvas.restore();

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _GlossyBadgePainter oldDelegate) {
    return oldDelegate.shape != shape ||
        oldDelegate.faceColor != faceColor ||
        oldDelegate.rimColor != rimColor ||
        oldDelegate.rimThickness != rimThickness;
  }
}
