import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppThemeData {
  static ThemeData appTheme = ThemeData(
    primarySwatch: secondary,
    scaffoldBackgroundColor: primary,
    iconTheme: const IconThemeData(color: tertiaryAccent),
    primaryIconTheme: const IconThemeData(color: tertiary),
    appBarTheme: AppBarTheme(backgroundColor: primary),
    cardColor:         Colors.grey.shade300.withOpacity(0.3),

    // iconButtonTheme:
    //     IconButtonThemeData(style: ButtonStyle(iconColor: Colors.blueGrey)),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.comfortaa(fontSize: 10, color: secondaryAccent),
      bodyMedium: GoogleFonts.comfortaa(fontSize: 12, color: secondaryAccent),
      bodyLarge: GoogleFonts.comfortaa(fontSize: 14, color: secondaryAccent),
      labelLarge: GoogleFonts.parisienne(fontSize: 10, color: secondaryAccent),
      labelSmall: GoogleFonts.parisienne(fontSize: 12, color: secondaryAccent),
      labelMedium: GoogleFonts.parisienne(fontSize: 14, color: secondaryAccent),
      displaySmall: GoogleFonts.comfortaa(fontSize: 16, color: secondaryAccent),
      displayMedium: GoogleFonts.comfortaa(fontSize: 18, color: secondaryAccent),
      displayLarge: GoogleFonts.comfortaa(fontSize: 20, color: secondaryAccent),
      titleSmall: GoogleFonts.parisienne(fontSize: 16, color: secondaryAccent),
      titleMedium: GoogleFonts.parisienne(fontSize: 18, color: secondaryAccent),
      titleLarge: GoogleFonts.parisienne(fontSize: 20, color: secondaryAccent),
    ),
  );
}
