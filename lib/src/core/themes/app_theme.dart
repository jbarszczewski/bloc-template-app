import 'package:bloc_template_app/src/core/themes/app_color_scheme.dart';
import 'package:bloc_template_app/src/core/themes/app_palette.dart';
import 'package:flutter/material.dart';

import 'colors_extension.dart';

abstract class AppTheme {
  static final _darkColors = ColorsExtension(
    titleBarColor: AppPalette.avocado,
    buttonCornerRadius: 10,
  );

  static final _lightColors = ColorsExtension(
    titleBarColor: AppPalette.avocadoLush,
    buttonCornerRadius: 5,
  );

  static ThemeData get materialDark {
    return ThemeData(
        brightness: Brightness.dark,
        colorScheme: AppColorScheme.dark,
        scaffoldBackgroundColor: AppPalette.avocadoRipe,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.deepOrange),
          ),
        ),
        extensions: [_darkColors]);
  }

  static ThemeData get materialLight {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: AppColorScheme.light,
      scaffoldBackgroundColor: AppPalette.avocadoLush,
      extensions: [_lightColors],
    );
  }
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ColorsExtension get themeColorsExtension =>
      Theme.of(this).extension<ColorsExtension>()!;
}
