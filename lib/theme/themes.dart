import 'package:flutter/material.dart';
import 'package:themeing_app/theme/custom_themes/ChipThemes.dart';
import 'package:themeing_app/theme/custom_themes/TextFieldThemes.dart';
import 'package:themeing_app/theme/custom_themes/appbar_theme.dart';
import 'package:themeing_app/theme/custom_themes/bottomSheetTheme.dart';
import 'package:themeing_app/theme/custom_themes/checkBox_themes.dart';
import 'package:themeing_app/theme/custom_themes/elevated_button_theme.dart';
import 'package:themeing_app/theme/custom_themes/floatingActionButtonThemes.dart';
import 'package:themeing_app/theme/custom_themes/text_theme.dart';

class Themes {
  Themes._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enables Material 3
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    // contain all types of text themes
    textTheme: Text_Theme.lightThemeText,
    // contain all types of elevated button themes
    elevatedButtonTheme: ElevatedButton_Theme.lightThemeElevatedButton,
    appBarTheme: Appbar_Theme.lightThemeAppBar,
    bottomSheetTheme: Bottomsheettheme.lightThemeBottomSheet,
    checkboxTheme: CheckboxThemes.lightThemeCheckbox,
    chipTheme: ChipThemes.lightChipTheme,
    inputDecorationTheme: TextFieldThemes.lightTextFieldTheme,
    floatingActionButtonTheme: Floatingactionbuttonthemes.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true, // Enables Material 3
      fontFamily: 'poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: const Color.fromARGB(255, 62, 62, 62),
      textTheme: Text_Theme.darkThemeText,
      elevatedButtonTheme: ElevatedButton_Theme.darkThemeElevatedButton,
      appBarTheme: Appbar_Theme.darkThemeAppBar,
      bottomSheetTheme: Bottomsheettheme.darkThemeBottomSheet,
      checkboxTheme: CheckboxThemes.darkThemeCheckbox,
      chipTheme: ChipThemes.darkChipTheme,
      inputDecorationTheme: TextFieldThemes.darkTextFieldTheme,
      floatingActionButtonTheme: Floatingactionbuttonthemes.darkTheme);
}
