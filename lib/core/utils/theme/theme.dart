import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/theme/custom_themes/appbar_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/chip_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/text_field_theme.dart';
import 'package:esnatch/core/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
    textTheme: TTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
    textTheme: TTextTheme.darkTextTheme,
  );
}
