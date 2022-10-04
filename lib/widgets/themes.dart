import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.grey.shade600,
        primaryColorDark: Colors.deepPurple.shade900,
        hintColor: Colors.grey,
        disabledColor: Colors.blue.shade100,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.grey.shade600,
        primaryColorDark: Colors.white,
        hintColor: Colors.grey,
        disabledColor: const Color(0xBF1b4b77),
        canvasColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
      );
}
