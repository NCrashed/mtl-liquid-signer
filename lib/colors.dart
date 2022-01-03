import 'package:flutter/material.dart';

class AppColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AppColors._();

  static const MaterialColor yellow = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFf5e28f),
      100: Color(0xFFf3dc79),
      200: Color(0xFFf1d662),
      300: Color(0xFFefd14c),
      400: Color(0xFFedcb35),
      500: Color(_bluePrimaryValue),
      600: Color(0xffd4b11c),
      700: Color(0xFFbc9e19),
      800: Color(0xFFa58a16),
      900: Color(0xFF8d7613),
    },
  );
  static const int _bluePrimaryValue = 0xffebc51f;

  static const Color dark_background = Color(0xFF2F2F2C);
  static const Color menu_divider = Color(0xFFC9C9C9);
}
