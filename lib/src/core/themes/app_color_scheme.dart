import 'package:flutter/material.dart';

import 'app_palette.dart';

sealed class AppColorScheme {
  /// App's light ColorScheme.
  static final ColorScheme light = ColorScheme.fromSeed(
    seedColor: AppPalette.avocado,
    brightness: Brightness.light,
    // Color overrides to design token values.
    // TIP: Visualize the color scheme without any pinned colors first and
    // then see what colors you need to pin to get the desired result and where
    // the colors in your palette will fit in the generated color scheme.
    primary: AppPalette.avocado,
    primaryContainer: AppPalette.avocadoMeat,
    secondary: AppPalette.avocadoRipe,
    secondaryContainer: AppPalette.avocadoTender,
    tertiary: AppPalette.avocadoCore,
    tertiaryContainer: AppPalette.effectLight,
    onTertiaryContainer: AppPalette.effectDark,
  );

  /// App's dark ColorScheme.
  static final ColorScheme dark = ColorScheme.fromSeed(
    seedColor: AppPalette.avocado,
    brightness: Brightness.dark,
    // Color overrides to design token values.
    // Overrides are different from light mode, typically inverse selections,
    // but you can also deviate from this when appropriate as done here.
    primary: AppPalette.avocadoLush,
    primaryContainer: AppPalette.avocadoPrime,
    onPrimaryContainer: AppPalette.avocado,
    secondary: AppPalette.avocadoTender,
    secondaryContainer: AppPalette.avocadoRipe,
    tertiary: AppPalette.effectLight,
    onTertiary: AppPalette.effectDark,
    tertiaryContainer: AppPalette.avocadoCore,
    onTertiaryContainer: AppPalette.effectLight,
  );
}
