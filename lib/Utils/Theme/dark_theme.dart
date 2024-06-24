import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xfffe774a),
    centerTitle: true,titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: CupertinoColors.white)
  ),
  textTheme: TextTheme(bodySmall: GoogleFonts.poppins(color: CupertinoColors.white)),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff242d3c),
    secondary: CupertinoColors.white,
    surface: Color(0xf7151a1f),
  ),
);
