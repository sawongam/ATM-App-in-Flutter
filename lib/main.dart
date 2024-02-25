import 'package:atmproject/configs/themes.dart';
import 'package:atmproject/screens/atm_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ATM Project",
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const AtmNumber(),
    );
  }
}
