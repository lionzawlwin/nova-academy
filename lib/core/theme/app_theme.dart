import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Nova Academy's brand palette. A single deliberate set of colors used
/// everywhere instead of ad-hoc `Colors.deepPurple` calls, so the app reads
/// as one coherent, premium product rather than a pile of screens.
class AppColors {
  AppColors._();

  /// Primary brand hue -- a confident indigo-violet used for the seed of
  /// both color schemes, most filled buttons, and headline gradients.
  static const Color primary = Color(0xFF5B4FE9);

  /// Secondary hue -- a fresh teal used for success/positive accents
  /// (stars, progress, completed states).
  static const Color secondary = Color(0xFF17C3B2);

  /// Tertiary/accent hue -- a warm amber used sparingly for highlights,
  /// rewards, and the owner/premium treatment.
  static const Color accent = Color(0xFFFFA62B);

  /// Soft, saturated hues for the Nursery/KG home screen's big playful
  /// subject tiles. Deliberately brighter and more candy-colored than the
  /// rest of the app's palette.
  static const List<Color> nurseryPalette = [
    Color(0xFFFF6F91), // bubblegum pink
    Color(0xFF4FC3F7), // sky blue
    Color(0xFFFFC93C), // sunshine yellow
    Color(0xFF7ED957), // grass green
    Color(0xFFB388FF), // lavender
    Color(0xFFFF8A65), // coral
  ];

  /// Playful-but-readable palette for the Primary (Year 1-6) gamified
  /// learning path.
  static const List<Color> primaryPalette = [
    Color(0xFF5B4FE9),
    Color(0xFF17C3B2),
    Color(0xFFFF8A5B),
    Color(0xFFEA5B8C),
    Color(0xFF3D8BFD),
    Color(0xFF34C38F),
  ];

  /// Muted, information-dense palette for the Secondary/IGCSE dashboard --
  /// deep saturated tones rather than bright pastel, read as more "grown
  /// up" and premium.
  static const List<Color> secondaryPalette = [
    Color(0xFF3949AB),
    Color(0xFF00695C),
    Color(0xFF6A4C93),
    Color(0xFFAD1457),
    Color(0xFF37474F),
    Color(0xFF00838F),
  ];

  // --- Candy Core design system tokens (Mission 6) -------------------------
  //
  // Additive-only: the tokens above stay untouched and in use until later
  // Mission 6 tasks retarget individual call sites one screen at a time.
  // See docs/superpowers/specs/2026-07-20-mission6-candy-core-design.md.

  /// Candy Core's primary brand hue -- Grape Punch. A deeper, more saturated
  /// indigo-violet than [primary]; re-seeds `ColorScheme.fromSeed` once
  /// later tasks cut the app over. Top face of primary 3D buttons and
  /// dominant chrome accents app-wide.
  static const Color candyPrimary = Color(0xFF6C4CFF);

  /// Tightened 4-color Nursery/KG candy-box rotation -- Bubblegum Pop, Sky
  /// Fizz, Sun Burst, Grass Bounce. Replaces [nurseryPalette]'s softer
  /// 6-color set for the youngest tier's giant 3D tiles (Task 6 retargets
  /// call sites; both palettes coexist until then).
  static const List<Color> nurseryCandyPalette = [
    Color(0xFFFF5CA8), // Bubblegum Pop
    Color(0xFF29C4F5), // Sky Fizz
    Color(0xFFFFD23F), // Sun Burst
    Color(0xFF4ED87A), // Grass Bounce
  ];

  /// Marks the active/current node on the Primary (Year 1-6) winding path
  /// so it pops against the indigo path line.
  static const Color pathOrange = Color(0xFFFF7A29);

  /// Secondary/IGCSE jewel-tone accent -- paired with [charcoalNavy] for a
  /// glossier "grown up" dashboard feel that still uses the same
  /// bevel-and-shine button language as the rest of the app.
  static const Color deepCobalt = Color(0xFF3B4CFF);

  /// Secondary/IGCSE jewel-tone base -- paired with [deepCobalt].
  static const Color charcoalNavy = Color(0xFF1C2035);

  /// Candy Core light-mode base scaffold background, deliberately quiet so
  /// saturated buttons/badges stay the visual event, not the backdrop.
  static const Color cloudWhite = Color(0xFFFDFBFF);

  /// Candy Core dark-mode base scaffold background -- the dark counterpart
  /// to [cloudWhite].
  static const Color inkWell = Color(0xFF16182B);

  /// Star badges, streak flames, and correct-answer states.
  static const Color goldMedal = Color(0xFFFFC93C);

  /// Fixed-angle diagonal gradient sheen baked into every medal/badge shape
  /// alongside [goldMedal], not just a shadow.
  static const Color goldMedalHighlight = Color(0xFFFFF3C4);

  /// Incorrect quiz answer state and destructive actions -- kept as
  /// saturated as the positive palette rather than desaturated, so feedback
  /// reads instantly to young kids.
  static const Color cherryCrush = Color(0xFFFF4D5E);

  /// Derives a 3D button's bottom bevel-shadow color from its own top
  /// ("face") color, darkened and desaturated by ~25%, rather than using a
  /// single global shadow gray -- so every button's bevel always reads as
  /// belonging to that button, per Candy Core's two-layer bevel
  /// construction (see the design spec's "Depth/bevel shadow" palette row).
  static Color bevelShadowFor(Color face) {
    final hsl = HSLColor.fromColor(face);
    final darkened = (hsl.lightness - 0.25).clamp(0.0, 1.0);
    final desaturated = (hsl.saturation - 0.25).clamp(0.0, 1.0);
    return hsl.withLightness(darkened).withSaturation(desaturated).toColor();
  }
}

/// Reusable gradients so hero headers/cards across the app share one
/// visual language instead of each screen inventing its own.
class AppGradients {
  AppGradients._();

  static LinearGradient hero(ColorScheme scheme) => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [scheme.primary, scheme.tertiary],
  );

  static const LinearGradient nurserySky = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF8EC5FC), Color(0xFFE0C3FC)],
  );

  static const LinearGradient owner = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFB8860B), Color(0xFF5B4FE9)],
  );

  static const LinearGradient secondaryMuted = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF232842), Color(0xFF3A4160)],
  );
}

/// A shared elevation/shadow system, tuned per [Brightness] -- dark-mode
/// shadows need to be far softer/dimmer or they just read as murky.
class AppShadows {
  AppShadows._();

  static List<BoxShadow> card(Brightness brightness) => [
    BoxShadow(
      color: brightness == Brightness.light
          ? Colors.black.withValues(alpha: 0.08)
          : Colors.black.withValues(alpha: 0.4),
      blurRadius: 18,
      offset: const Offset(0, 8),
    ),
  ];

  static List<BoxShadow> floating(
    Color tint, {
    Brightness brightness = Brightness.light,
  }) => [
    BoxShadow(
      color: tint.withValues(
        alpha: brightness == Brightness.light ? 0.35 : 0.5,
      ),
      blurRadius: 20,
      offset: const Offset(0, 10),
    ),
  ];
}

/// Nova Academy's premium light/dark [ThemeData], with a bilingual-aware
/// type scale: Burmese renders in Noto Sans Myanmar (the only widely
/// available free font with correct stacked/medial glyph shaping) while
/// English uses a clean modern grotesque, so neither language ever shows
/// tofu boxes or clipped stacks.
class AppTheme {
  AppTheme._();

  static const double radiusSmall = 12;
  static const double radiusMedium = 18;
  static const double radiusLarge = 24;

  static TextTheme _bilingualTextTheme({
    required String languageCode,
    required TextTheme base,
    required Color bodyColor,
    required Color displayColor,
  }) {
    final themed = languageCode == 'my'
        ? GoogleFonts.notoSansMyanmarTextTheme(base)
        : GoogleFonts.plusJakartaSansTextTheme(base);
    // Burmese glyphs run visually taller than Latin ones at the same
    // font-size -- a touch of extra height keeps stacked vowel marks from
    // ever feeling cramped, without needing per-widget fixed heights.
    final heightBoost = languageCode == 'my' ? 1.15 : 1.25;
    return themed
        .apply(bodyColor: bodyColor, displayColor: displayColor)
        .copyWith(
          displayLarge: themed.displayLarge?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w800,
          ),
          displayMedium: themed.displayMedium?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w800,
          ),
          headlineLarge: themed.headlineLarge?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: themed.headlineMedium?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w700,
          ),
          headlineSmall: themed.headlineSmall?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: themed.titleLarge?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: themed.titleMedium?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: themed.titleSmall?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: themed.bodyLarge?.copyWith(height: heightBoost),
          bodyMedium: themed.bodyMedium?.copyWith(height: heightBoost),
          bodySmall: themed.bodySmall?.copyWith(height: heightBoost),
          labelLarge: themed.labelLarge?.copyWith(
            height: heightBoost,
            fontWeight: FontWeight.w600,
          ),
        );
  }

  static ThemeData _build({
    required ColorScheme scheme,
    required String languageCode,
  }) {
    final brightness = scheme.brightness;
    final base = ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      brightness: brightness,
    );
    final textTheme = _bilingualTextTheme(
      languageCode: languageCode,
      base: base.textTheme,
      bodyColor: scheme.onSurface,
      displayColor: scheme.onSurface,
    );

    return base.copyWith(
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      scaffoldBackgroundColor: scheme.surface,
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        foregroundColor: scheme.onSurface,
        titleTextStyle: textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: scheme.surfaceContainerHigh,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
        ),
        margin: EdgeInsets.zero,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: scheme.surfaceContainerHighest,
        labelStyle: textTheme.bodySmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      ),
      dividerTheme: DividerThemeData(
        color: scheme.outlineVariant,
        thickness: 1,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
          textStyle: textTheme.labelLarge,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
          elevation: 2,
          textStyle: textTheme.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
          side: BorderSide(color: scheme.outlineVariant, width: 1.4),
          textStyle: textTheme.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
          textStyle: textTheme.labelLarge,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSmall),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
          borderSide: BorderSide(color: scheme.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
          borderSide: BorderSide(color: scheme.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSmall),
        ),
      ),
      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
        ),
        backgroundColor: scheme.surfaceContainerHigh,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: scheme.primary),
    );
  }

  static ThemeData light(String languageCode) {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ).copyWith(secondary: AppColors.secondary, tertiary: AppColors.accent);
    return _build(scheme: scheme, languageCode: languageCode);
  }

  static ThemeData dark(String languageCode) {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    ).copyWith(secondary: AppColors.secondary, tertiary: AppColors.accent);
    return _build(scheme: scheme, languageCode: languageCode);
  }
}
