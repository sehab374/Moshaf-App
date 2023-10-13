import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffb7935f);
  static Color darkPrimaryColor = Color(0xff141A2E);
  static Color yellow = Color(0xFFFACC1D);

  static Color blackColor = Color(0xFF242424);


  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,

    ///////////////////////ui/ux
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: blackColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: primaryColor,
        onBackground: blackColor,
        surface: primaryColor,
        onSurface: Colors.white),


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

  static ThemeData darktheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,

    ///////////////////////ui/ux
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrimaryColor,
        onPrimary: Colors.white,
        secondary: yellow,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellow,
        onBackground:Colors.white,
        surface: darkPrimaryColor,
        onSurface: Colors.white),


    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white, size: 30)),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFFFFF)),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xFFFACC1D)),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFFFFF)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: darkPrimaryColor,
        selectedItemColor: yellow,
        unselectedItemColor:  Color(0xFFFFFF)),
  );
}
