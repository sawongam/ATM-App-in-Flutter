import 'package:atmproject/UI/atm_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ATM Project",
      theme: ThemeData(
        primaryColor: const Color(0xFF232938),
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: const Color(0xFF3c465c),
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const AtmNumber(),
    );
  }
}
