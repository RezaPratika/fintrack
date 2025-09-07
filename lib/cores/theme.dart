import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFFEFEFEF);
  static const Color primaryColor = Color(0xFF133C5C);
  static const Color secondaryColor = Color(0xFF1E88E5);
  static const Color accentColor = Color(0xFFFF9800);
  static const Color backgroundColor2 = Color(0xFFF5F7FA);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF212121);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor2,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    textTheme: GoogleFonts.interTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
  );
}
