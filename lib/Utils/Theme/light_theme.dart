import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfffe774a),
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: CupertinoColors.black,
      )),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.poppins(
      color: CupertinoColors.black,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: CupertinoColors.white,
    secondary: CupertinoColors.black,
    surface: Color(0xffd4d6dc),
  ),
);
