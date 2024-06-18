import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsExtension extends ThemeExtension<ColorsExtension> {
  final Color titleBarColor;
  final double buttonCornerRadius;

  ColorsExtension(
      {required this.titleBarColor, required this.buttonCornerRadius});
  @override
  ThemeExtension<ColorsExtension> copyWith(
      {Color? titleBarColor, double? buttonCornerRadius}) {
    return ColorsExtension(
        titleBarColor: titleBarColor ?? this.titleBarColor,
        buttonCornerRadius: buttonCornerRadius ?? this.buttonCornerRadius);
  }

  @override
  ThemeExtension<ColorsExtension> lerp(
      covariant ThemeExtension<ColorsExtension>? other, double t) {
    if (other is! ColorsExtension) {
      return this;
    }
    return ColorsExtension(
      titleBarColor: Color.lerp(titleBarColor, other.titleBarColor, t)!,
      buttonCornerRadius:
          lerpDouble(buttonCornerRadius, other.buttonCornerRadius, t)!,
    );
  }
}
