import 'package:flutter/material.dart';

class CheckboxThemes {
  CheckboxThemes._();
  static final CheckboxThemeData lightThemeCheckbox = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue; // Color when checked
      }
      return Colors.grey.shade300; // Color when unchecked
    }),
    checkColor: MaterialStateProperty.all(Colors.white), // Checkmark color
    overlayColor: MaterialStateProperty.all(Colors.blue),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
  // dark theme
  static final CheckboxThemeData darkThemeCheckbox = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.purple; // Color when checked
      }
      return Colors.grey.shade700; // Color when unchecked
    }),
    checkColor: MaterialStateProperty.all(Colors.black), // Checkmark color
    overlayColor: MaterialStateProperty.all(Colors.purple),
    splashRadius: 20,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
