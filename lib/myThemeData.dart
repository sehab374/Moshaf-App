import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffb7935f);

  static Color blackColor = Color(0xFF242424);

  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor, size: 30)),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w400, color: blackColor),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: blackColor),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: blackColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primaryColor,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white),
  );

  static ThemeData darktheme = ThemeData();
}
