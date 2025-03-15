import 'package:flutter/material.dart';

class Appbar_Theme {
  Appbar_Theme._();
  // light theme
  static final AppBarTheme lightThemeAppBar = AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
  // dark theme
  static final AppBarTheme darkThemeAppBar = AppBarTheme(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: const TextStyle().copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
