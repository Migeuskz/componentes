import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.greenAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.blueAccent,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,
    // AppBar Theme:
    appBarTheme: const AppBarTheme(
      color: Colors.blueGrey,
      elevation: 0,
    ),
  );
}
