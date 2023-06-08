import 'package:flutter/material.dart';

// primary color
const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0EBED),
  100: Color(0xFFB3CDD2),
  200: Color(0xFF80ACB5),
  300: Color(0xFF4D8B97),
  400: Color(0xFF267280),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF005162),
  700: Color(0xFF004857),
  800: Color(0xFF003E4D),
  900: Color(0xFF002E3C),
});
const int _primaryPrimaryValue = 0xFF00596A;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF72D5FF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF0CB7FF),
  700: Color(0xFF00AAF1),
});
const int _primaryAccentValue = 0xFF3FC6FF;

// secondary color
const MaterialColor secondary = MaterialColor(_secondaryPrimaryValue, <int, Color>{
  50: Color(0xFFF4F2F0),
  100: Color(0xFFE3DED9),
  200: Color(0xFFD0C8C0),
  300: Color(0xFFBDB1A7),
  400: Color(0xFFAEA194),
  500: Color(_secondaryPrimaryValue),
  600: Color(0xFF988879),
  700: Color(0xFF8E7D6E),
  800: Color(0xFF847364),
  900: Color(0xFF736151),
});
const int _secondaryPrimaryValue = 0xFFA09081;

const MaterialColor secondaryAccent = MaterialColor(_secondaryAccentValue, <int, Color>{
  100: Color(0xFFFFEAD9),
  200: Color(_secondaryAccentValue),
  400: Color(0xFFFFB373),
  700: Color(0xFFFFA559),
});
const int _secondaryAccentValue = 0xFFFFCFA6;

// tertiary color
const MaterialColor tertiary = MaterialColor(_tertiaryPrimaryValue, <int, Color>{
  50: Color(0xFFF8FCFC),
  100: Color(0xFFECF8F8),
  200: Color(0xFFE0F3F3),
  300: Color(0xFFD4EEEE),
  400: Color(0xFFCAEAEB),
  500: Color(_tertiaryPrimaryValue),
  600: Color(0xFFBBE3E4),
  700: Color(0xFFB3DFE0),
  800: Color(0xFFABDBDD),
  900: Color(0xFF9ED5D7),
});
const int _tertiaryPrimaryValue = 0xFFC1E6E7;

const MaterialColor tertiaryAccent = MaterialColor(_tertiaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_tertiaryAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFBFFFF),
});
const int _tertiaryAccentValue = 0xFFFFFFFF;