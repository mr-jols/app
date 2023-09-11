import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ColorManager {
  static final Color primaryColor = _colorFromHex("#080050");
  static final Color primaryColor1 = ColorManager.primaryColor.withOpacity(0.8);
  static final Color primaryColor2 = _colorFromHex("#070043");

  static final Color onPrimaryColor = _colorFromHex("#ffffff");

  static final Color onBackgroundColor=_colorFromHex("#000000");
  static final Color onBackgroundColor1=_colorFromHex("#3A3A3A");

  static final Color secondaryColor = _colorFromHex("#fce4f0");
  static final Color secondaryColor1 = _colorFromHex("#dff3e7");
  static final Color secondaryColor2=_colorFromHex("e6e6f9");
  static final Color secondaryColor3=_colorFromHex("bab2ff");

  static final Color alternateColor = _colorFromHex("#3A3A3A");
  static final Color alternateColor1 = _colorFromHex("#a5a5a5");
  static final Color alternateColor2 = _colorFromHex("#F5F5F5");
  static final Color alternateColor3 = _colorFromHex("#D4D3D3");
  static final Color alternateColor4 = _colorFromHex("#000000");

  static final Color accentColor = _colorFromHex("#009941");
  static final Color accentColor1 = _colorFromHex("#FF1B1B");
  static final Color accentColor2 = _colorFromHex("#FFAE3D");

  static const Color errorColor = Colors.red;
}

Color _colorFromHex(String hexColorString) {
  hexColorString = hexColorString.replaceAll('#', '');
  if (hexColorString.length == 6) {
    hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
  }
  return Color(int.parse(hexColorString, radix: 16));
}
