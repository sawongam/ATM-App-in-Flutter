import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData defaultTheme = ThemeData(
  useMaterial3: false,
  primaryColor: const Color(0xFF232938),
  primarySwatch: Colors.grey,
  scaffoldBackgroundColor: const Color(0xFF3c465c),
  fontFamily: GoogleFonts.inter().fontFamily,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  ),
);
