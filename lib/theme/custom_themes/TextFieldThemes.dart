import 'package:flutter/material.dart';

class TextFieldThemes {
  TextFieldThemes._();

  // Light theme TextField style
  static final InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade200, // Background color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.blue.shade300, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:
          // for no border
          //   BorderSide.none
          BorderSide(color: Colors.blue.shade300, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.blue, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    labelStyle: TextStyle(color: Colors.black87),
    hintStyle: TextStyle(color: Colors.black54),
    prefixIconColor: Colors.blue,
    suffixIconColor: Colors.blue,
  );

  // Dark theme TextField style
  static final InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade900, // Background color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.purple.shade300, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.purple.shade300, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.purple, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.red, width: 2),
    ),
    labelStyle: TextStyle(color: Colors.white70),
    hintStyle: TextStyle(color: Colors.white54),
    prefixIconColor: Colors.purple,
    suffixIconColor: Colors.purple,
  );
}
