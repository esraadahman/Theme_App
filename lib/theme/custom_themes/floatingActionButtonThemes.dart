import 'package:flutter/material.dart';

class Floatingactionbuttonthemes {
  Floatingactionbuttonthemes._();
  static final lightTheme = FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    splashColor: Colors.white,
    elevation: 4,
    focusElevation: 6,
    hoverElevation: 6,
    disabledElevation: 0,
    highlightElevation: 8,
    shape: CircleBorder(),
  );

  static final darkTheme = FloatingActionButtonThemeData(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.black,
    focusColor: Colors.black,
    hoverColor: Colors.black,
    splashColor: Colors.black,
    elevation: 4,
    focusElevation: 6,
    hoverElevation: 6,
    disabledElevation: 0,
    highlightElevation: 8,
    shape: CircleBorder(),
  );
}
