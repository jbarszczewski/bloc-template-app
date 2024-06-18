import 'package:bloc_template_app/src/themes/app_palette.dart';
import 'package:flutter/material.dart';

import 'colors_extension.dart';

abstract class AppTheme {
  static final _darkColors = ColorsExtension(
    titleBarColor: AppPalette.darkGray,
    buttonCornerRadius: 10,
  );

  static final _lightColors = ColorsExtension(
    titleBarColor: AppPalette.lightGray,
    buttonCornerRadius: 5,
  );

  static ThemeData get materialDark {
    return ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppPalette.darkGray,
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
      scaffoldBackgroundColor: AppPalette.lightGray,
      extensions: [_lightColors],
    );
  }
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  ColorsExtension get themeColorsExtension =>
      Theme.of(this).extension<ColorsExtension>()!;
}
