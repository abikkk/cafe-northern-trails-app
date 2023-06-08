import 'package:Cafe_Northern_Trails/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {

  static ThemeData appTheme = ThemeData(
    primarySwatch: primary,
    iconTheme: const IconThemeData(color: primary),
    primaryIconTheme: const IconThemeData(color: secondary),
    // iconButtonTheme:
    //     IconButtonThemeData(style: ButtonStyle(iconColor: Colors.blueGrey)),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.comfortaa(fontSize: 10,color:Colors.grey[700]),
      bodyMedium: GoogleFonts.comfortaa(fontSize: 12,color:Colors.grey[700]),
      bodyLarge: GoogleFonts.comfortaa(fontSize: 14,color:Colors.grey[700]),
      labelLarge: GoogleFonts.parisienne(fontSize: 10,color:Colors.grey[700]),
      labelSmall: GoogleFonts.parisienne(fontSize: 12,color:Colors.grey[700]),
      labelMedium: GoogleFonts.parisienne(fontSize: 14,color:Colors.grey[700]),
      displaySmall: GoogleFonts.comfortaa(fontSize: 16,color:Colors.grey[700]),
      displayMedium: GoogleFonts.comfortaa(fontSize: 18,color:Colors.grey[700]),
      displayLarge: GoogleFonts.comfortaa(fontSize: 20,color:Colors.grey[700]),
      titleSmall: GoogleFonts.parisienne(fontSize: 16,color:Colors.grey[700]),
      titleMedium: GoogleFonts.parisienne(fontSize: 18,color:Colors.grey[700]),
      titleLarge: GoogleFonts.parisienne(fontSize: 20,color:Colors.grey[700]),
    ),
  );
}
