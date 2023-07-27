import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [Color(0xFF101727), Color(0xFF111418)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
      ),
    ),
        child: Center(
          child: ListView(

          ),
        ),
    ),
    );
  }
}
