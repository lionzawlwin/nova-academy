import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Common bevel-depth presets from the Candy Core design spec's "Bevel
/// depth by context" table -- pass the raw `double` if a screen needs a
/// value outside these presets, but prefer these so depth stays consistent
/// with the tier/hierarchy lever the spec defines.
class CandyBevelDepth {
  CandyBevelDepth._();

  /// Nursery/KG tiles -- deepest, literal 3D chunky blocks.
  static const double nursery = 11;

  /// Primary path nodes and hero "Start" CTAs.
  static const double primary = 7;

  /// Secondary/IGCSE subject cards & module rows -- dense lists don't feel
  /// as toy-like.
  static const double secondary = 3.5;

  /// Quiz answer options (shared across Primary + Secondary) -- fixed
  /// regardless of which tier launched the quiz, per the spec's
  /// `McqQuizScreen` constraint.
  static const double quiz = 6;
}

/// The visual state a [CandyBevelSurface] is rendering, layered on top of
/// its own idle/press mechanics. Generic on purpose -- e.g. a quiz option
/// drives [correct]/[incorrect] through this, but the widget itself has no
/// knowledge of quizzes; any caller with a "this went right/wrong/is
/// unavailable" moment can reuse the same four states.
enum CandyBevelState {
  /// Default resting/interactive state.
  idle,

  /// Flashes to [CandyBevelSurface.correctColor] (default
  /// [AppColors.goldMedal]) and shows [CandyBevelSurface.correctIcon] if
  /// provided.
  correct,

  /// Flashes to [CandyBevelSurface.incorrectColor] (default
  /// [AppColors.cherryCrush]) and shows [CandyBevelSurface.incorrectIcon]
  /// if provided.
  incorrect,

  /// Desaturates/recedes and stops responding to taps -- per the spec's
  /// "disabled/non-selected-after-submit" behavior, the face never sinks
  /// in this state even while a gesture is in flight.
  disabled,
}

/// Nova Academy's shared "Candy Core" two-layer 3D bevel surface -- the
/// linchpin widget every tappable button/tile/card/quiz-option in the
/// Mission 6 redesign is built on, so the two-layer construction lives in
/// exactly one place instead of being hand-duplicated across ~15 call
/// sites (see the design spec's "Shape, elevation, and the two-layer bevel
/// construction" section).
///
/// Structure: a bottom "shadow" layer in
/// `AppColors.bevelShadowFor(faceColor)` sits [bevelDepth] below a top
/// "face" layer holding [child]. Tapping animates the face layer's offset
/// from `0` down to [bevelDepth] over ~80ms (`Curves.easeOut`), sinking it
/// flush with the shadow layer, then springs back over ~150ms
/// (`Curves.elasticOut`, slight overshoot) on release -- Duolingo's
/// answer-button language.
class CandyBevelSurface extends StatefulWidget {
  const CandyBevelSurface({
    super.key,
    required this.child,
    required this.faceColor,
    this.bevelDepth = CandyBevelDepth.primary,
    this.borderRadius = 16,
    this.onTap,
    this.state = CandyBevelState.idle,
    this.correctColor,
    this.incorrectColor,
    this.disabledColor,
    this.correctIcon,
    this.incorrectIcon,
    this.border,
    this.width,
    this.height,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  });

  /// Content shown on the face layer. Wrap user-facing text in
  /// `FittedBox`/`Flexible` at the call site per the bilingual convention
  /// -- this widget doesn't force that, since not every child is text.
  final Widget child;

  /// The idle-state top/"face" color. Also the seed [AppColors.bevelShadowFor]
  /// derives the bottom shadow layer's color from, in every state (the
  /// shadow always matches whichever face color is currently showing).
  final Color faceColor;

  /// Vertical distance (dp) between the face and shadow layers at rest --
  /// see [CandyBevelDepth] for the spec's tier presets.
  final double bevelDepth;

  final double borderRadius;

  /// Fires once per completed tap (tap-down followed by tap-up inside the
  /// surface). Ignored entirely -- no animation, no callback -- while
  /// `null` or while [state] is [CandyBevelState.disabled].
  final VoidCallback? onTap;

  /// Drives which color/icon slot is showing. Purely visual -- callers own
  /// their own state machine (e.g. "which quiz option did the student
  /// pick") and just reflect it here.
  final CandyBevelState state;

  /// Face color when [state] is [CandyBevelState.correct]. Defaults to
  /// [AppColors.goldMedal].
  final Color? correctColor;

  /// Face color when [state] is [CandyBevelState.incorrect]. Defaults to
  /// [AppColors.cherryCrush].
  final Color? incorrectColor;

  /// Face color when [state] is [CandyBevelState.disabled]. Defaults to
  /// [faceColor] desaturated to ~40% opacity, per the spec's
  /// "disabled/non-selected-after-submit" treatment.
  final Color? disabledColor;

  /// Optional trailing icon shown only when [state] is
  /// [CandyBevelState.correct] (e.g. a check-circle).
  final Widget? correctIcon;

  /// Optional trailing icon shown only when [state] is
  /// [CandyBevelState.incorrect] (e.g. an X-circle).
  final Widget? incorrectIcon;

  final BoxBorder? border;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  State<CandyBevelSurface> createState() => _CandyBevelSurfaceState();
}

class _CandyBevelSurfaceState extends State<CandyBevelSurface>
    with SingleTickerProviderStateMixin {
  static const _pressDuration = Duration(milliseconds: 80);
  static const _releaseDuration = Duration(milliseconds: 150);

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: _pressDuration,
  );

  bool get _isInteractive =>
      widget.onTap != null && widget.state != CandyBevelState.disabled;

  @override
  void didUpdateWidget(covariant CandyBevelSurface oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Disabling mid-press (e.g. a quiz option locking the moment another
    // option is tapped) must snap the face back up -- it "never sinks"
    // while disabled, per the spec.
    if (!_isInteractive && _controller.value != 0) {
      _controller.animateTo(
        0,
        duration: _releaseDuration,
        curve: Curves.elasticOut,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (!_isInteractive) return;
    _controller.animateTo(1, duration: _pressDuration, curve: Curves.easeOut);
  }

  void _handleTapUp(TapUpDetails details) {
    if (!_isInteractive) return;
    _controller.animateTo(
      0,
      duration: _releaseDuration,
      curve: Curves.elasticOut,
    );
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    if (!_isInteractive) return;
    _controller.animateTo(
      0,
      duration: _releaseDuration,
      curve: Curves.elasticOut,
    );
  }

  ({Color face, Widget? icon}) _resolveState() {
    switch (widget.state) {
      case CandyBevelState.idle:
        return (face: widget.faceColor, icon: null);
      case CandyBevelState.correct:
        return (
          face: widget.correctColor ?? AppColors.goldMedal,
          icon: widget.correctIcon,
        );
      case CandyBevelState.incorrect:
        return (
          face: widget.incorrectColor ?? AppColors.cherryCrush,
          icon: widget.incorrectIcon,
        );
      case CandyBevelState.disabled:
        return (
          face: widget.disabledColor ?? widget.faceColor.withValues(alpha: 0.4),
          icon: null,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final resolved = _resolveState();
    final radius = BorderRadius.circular(widget.borderRadius);
    final content = resolved.icon == null
        ? widget.child
        : Stack(
            alignment: Alignment.center,
            children: [
              widget.child,
              Positioned(right: 4, child: resolved.icon!),
            ],
          );

    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final offset = _isInteractive
              ? _controller.value * widget.bevelDepth
              : 0.0;
          return Stack(
            clipBehavior: Clip.none,
            children: [
              // Shadow layer: static, always `bevelDepth` below the
              // Stack's top edge. The Stack's overall size is established
              // by the face layer below (the only non-`Positioned` child),
              // so this always ends up exactly `bevelDepth` worth of
              // shadow peeking out beneath the face at rest.
              Positioned(
                left: 0,
                right: 0,
                top: widget.bevelDepth,
                bottom: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.bevelShadowFor(resolved.face),
                    borderRadius: radius,
                  ),
                ),
              ),
              // Face layer: the single copy of `child` in the tree (no
              // invisible clone needed for sizing). Not `Positioned`, so
              // it determines the Stack's size; its margin trades `offset`
              // of top margin for bottom margin as the animation runs, so
              // the Stack's total occupied height (content + bevelDepth)
              // never changes mid-press -- only the face's position inside
              // that fixed space moves.
              Container(
                margin: EdgeInsets.only(
                  top: offset,
                  bottom: widget.bevelDepth - offset,
                ),
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  padding: widget.padding,
                  decoration: BoxDecoration(
                    color: resolved.face,
                    borderRadius: radius,
                    border: widget.border,
                  ),
                  child: content,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
