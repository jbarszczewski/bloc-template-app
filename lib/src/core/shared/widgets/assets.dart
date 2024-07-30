import 'dart:ui';

import 'package:vector_graphics/vector_graphics.dart';

class Assets {
  static VectorGraphic accountIcon = const VectorGraphic(
    loader: AssetBytesLoader('assets/svg/nav_icon_account.svg'),
    colorFilter: ColorFilter.mode(Color(0xFF70ABE6), BlendMode.srcIn),
    width: 120,
    height: 120,
  );
}
