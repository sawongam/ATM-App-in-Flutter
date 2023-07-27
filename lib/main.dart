import 'package:atmproject/menu.dart';
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
        primarySwatch: Colors.blue,
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

class AtmNumber extends StatelessWidget {
  const AtmNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF101727), Color(0xFF111418)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 5),
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'ATM',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 120),
            Container(
              height: 50,
              width: 240,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF232938),
                  labelText: 'ATM Card Number',
                  labelStyle: const TextStyle(
                    color: Color(0xFF999999),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(80),
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    color: const Color(0xFF999999),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Menu(),
                        ),
                      );
                    },
                  ),
                ),
                style: const TextStyle(
                  color: Colors.white,
                )
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              'Insert your Card number to begin',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/images/atm.png'),
            ),
            // const SizedBox(height: 138),
            const Spacer(flex: 7),
            const Text(
              'Developed by sawongam',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 255, 255, 0.6)
              ),
            ),
            const Spacer(),
          ],
      ),
    ),
        ));
  }
}
