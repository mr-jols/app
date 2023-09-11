import 'package:alpha_customer/app/managers/colors.dart';
import 'package:alpha_customer/app/managers/fonts.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  ThemeData get themeData => ThemeData(
      primaryColor: ColorManager.primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorManager.onPrimaryColor,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      textTheme: _textTheme,
      splashColor: Colors.transparent,
      bottomSheetTheme: _bottomSheetThemeData,
      inputDecorationTheme: _inputDecorationTheme,

      appBarTheme: _appBarTheme);

  AppBarTheme get _appBarTheme {
    return AppBarTheme(
      backgroundColor: ColorManager.primaryColor,
    );
  }

  InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        fillColor: ColorManager.alternateColor2,
        hintStyle: TextStyle(
            color: ColorManager.alternateColor1,
            fontSize: 14,
            fontWeight: FontWeight.normal),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 16));
  }

  InputBorder inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.alternateColor3, width: 0.5),
      borderRadius: const BorderRadius.all(Radius.circular(5)));

  BottomSheetThemeData get _bottomSheetThemeData {
    return BottomSheetThemeData(
        backgroundColor: ColorManager.primaryColor,
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))));
  }

  TextTheme get _textTheme {
    return TextTheme(
        titleLarge: FontStyleManager.titleLarge,
        titleMedium: FontStyleManager.titleMedium,
        titleSmall: FontStyleManager.titleSmall,
        labelLarge: FontStyleManager.labelLarge,
        labelMedium: FontStyleManager.labelMedium,
        labelSmall: FontStyleManager.labelSmall,
        bodyLarge: FontStyleManager.bodyLarge,
        bodyMedium: FontStyleManager.bodyMedium,
        bodySmall: FontStyleManager.bodySmall);
  }

  BottomNavigationBarThemeData get _bottomNavigationBarThemeData {
    return BottomNavigationBarThemeData(
        selectedItemColor: ColorManager.secondaryColor1,
        unselectedItemColor: ColorManager.onPrimaryColor,
        backgroundColor: ColorManager.primaryColor);
  }
}
