import 'package:flutter/material.dart';

class ElevatedButton_Theme {
  ElevatedButton_Theme._();

  /*  
  it has 1 property for  : style 
  */
  // light theme
  static final ElevatedButtonThemeData lightThemeElevatedButton =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue, // background color
      foregroundColor: Colors.white, // text color
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      shadowColor: Colors.red,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
  // dark theme
  static final ElevatedButtonThemeData darkThemeElevatedButton =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple, // background color
      foregroundColor: Colors.black, // text color
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      shadowColor: Colors.red,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
