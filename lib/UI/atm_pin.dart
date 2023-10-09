import 'package:atmproject/UI/menu.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';

class AtmPin extends StatelessWidget {
  final String atmNo;

  const AtmPin(this.atmNo, {super.key});

  @override
  Widget build(BuildContext context) {
    var atmPIN = TextEditingController();

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(flex: 1),
                const Text(
                  'ATM PIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    height: 1.17,
                    letterSpacing: 0.33,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter your four-digit pin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    letterSpacing: -0.32,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  height: 52,
                  width: 180,
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF232938),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Pinput(
                    controller: atmPIN,
                    length: 4,
                    showCursor: false,
                    obscureText: true,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: const PinTheme(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF999999),
                      ),
                    ),
                    onCompleted: (atmPIN) {
                      _routetoMenu(context, atmNo, atmPIN);
                    },
                  ),
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _routetoMenu(BuildContext context, String atmNo, String atmPIN) {
    Fluttertoast.showToast(msg: 'Logged in successfully');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Menu(atmNo, atmPIN)),
    );
  }
}
