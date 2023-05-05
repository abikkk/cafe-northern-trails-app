import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData appTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    iconTheme: const IconThemeData(color: Colors.blueGrey),
    primaryIconTheme: const IconThemeData(color: Colors.blueGrey),
    // iconButtonTheme:
    //     IconButtonThemeData(style: ButtonStyle(iconColor: Colors.blueGrey)),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 10),
      bodyMedium: TextStyle(fontSize: 12),
      bodyLarge: TextStyle(fontSize: 14),
      labelLarge: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      labelSmall: TextStyle(fontSize: 12),
      labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 16),
      displayMedium: TextStyle(fontSize: 18),
      displayLarge: TextStyle(fontSize: 20),
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}
