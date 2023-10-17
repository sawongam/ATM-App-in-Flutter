import 'dart:convert';
import 'dart:io';

import 'package:atmproject/Default/default_values.dart';
import 'package:atmproject/Services/setup_json.dart';
import 'package:atmproject/Services/read_json.dart';
import 'package:atmproject/Test/test.dart';
import 'package:atmproject/UI/balance_check.dart';
import 'package:atmproject/UI/withdraw/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';

class Menu extends StatefulWidget {
  final String atmNo, atmPIN;

  const Menu(this.atmNo, this.atmPIN, {super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  void initState() {
    super.initState();
    _isAccLogged();
  }

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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 4),
                const Text(
                  'MENU',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 100),
                const Spacer(),
                SizedBox(
                  width: 266,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      _routetoBalanceCheck();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF232938),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(85),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                    ),
                    child: const Text(
                      'CHECK BALANCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 40),
                const Spacer(),
                SizedBox(
                  width: 266,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      _routetoWithdraw();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF232938),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(85),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                    ),
                    child: const Text(
                      'WITHDRAW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 40),
                const Spacer(),
                SizedBox(
                  width: 266,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF232938),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(85),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 18),
                    ),
                    child: const Text(
                      'EXIT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 5,
                ),
              ]),
        ),
      ),
    );
  }

  void _routetoBalanceCheck() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BalanceCheck(widget.atmNo)),
    );
  }

  void _routetoWithdraw() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Withdraw(widget.atmNo, 0)),
    );
  }

  void _isAccLogged() async {
    Future<bool> accLogged = setupJSON(widget.atmNo, widget.atmPIN);
    if (await accLogged) {
      Fluttertoast.showToast(msg: 'Logged in');
    } else {
      Fluttertoast.showToast(msg: 'New Account Created');
    }
  }
}
