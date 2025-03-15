import 'package:flutter/material.dart';

class Text_Theme {
  Text_Theme._();
  /*  
  every textTheme has 3 for  : large , medium , small 
        display 
  TextStyle? displayLarge,
  TextStyle? displayMedium,
  TextStyle? displaySmall,
        heading,
  TextStyle? headlineLarge,
  TextStyle? headlineMedium,
  TextStyle? headlineSmall,
        title,
  TextStyle? titleLarge,
  TextStyle? titleMedium,
  TextStyle? titleSmall,
        body,
  TextStyle? bodyLarge,
  TextStyle? bodyMedium,
  TextStyle? bodySmall,
        label,
  TextStyle? labelLarge,
  TextStyle? labelMedium,
  TextStyle? labelSmall,
  */
  // light theme text
  static final TextTheme lightThemeText = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  // dark theme
  static final TextTheme darkThemeText = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
