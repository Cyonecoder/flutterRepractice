import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderMoTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineLarge: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((state) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(selectedItemColor: Colors.green),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,

      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xf5e5959),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(selectedItemColor: Colors.green),
      textTheme: darkTextTheme,
    );
  }
}
