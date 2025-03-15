import 'package:flutter/material.dart';

class ChipThemes {
  ChipThemes._();

  static final ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade200,
    selectedColor: Colors.blue,
    disabledColor: Colors.grey.shade400,
    labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    side: const BorderSide(color: Colors.blue, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );

  static final ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade800,
    selectedColor: Colors.purple,
    disabledColor: Colors.grey.shade600,
    labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    side: const BorderSide(color: Colors.purple, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
