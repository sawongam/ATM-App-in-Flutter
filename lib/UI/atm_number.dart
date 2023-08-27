import 'package:atmproject/UI/atm_pin.dart';
import 'package:atmproject/UI/menu.dart';
import 'package:flutter/material.dart';

class AtmNumber extends StatelessWidget {
  const AtmNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
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
                  SizedBox(
                    height: 50,
                    width: 280,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        // maxLength: 16,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF232938),
                          labelText: 'ATM Card Number',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                                  builder: (context) => const AtmPin(),
                                ),
                              );
                            },
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        )),
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
                        color: Color.fromRGBO(255, 255, 255, 0.6)),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )),
    );
  }
}
