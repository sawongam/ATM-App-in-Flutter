import 'dart:convert';
import 'dart:io';

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

  var chkBal = 0;
  var savBal = 0;

  @override
  void initState() {
    super.initState();
    writeJSON();
    readJSON();
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

  void writeJSON() async {
    final Directory? jsonDir = await getDownloadsDirectory();
    String jsonPath = '${jsonDir?.path}/atm.json';
    if (File(jsonPath).existsSync()) {
      File file = File(jsonPath);
      file.writeAsString(
          '[{"atmNo":"${widget.atmNo}","atmPIN":"${widget.atmPIN}","chkBal": 69, "savBal": 420}]');
    } else {
      File file = File(jsonPath);
      file.writeAsString(
          '[{"atmNo":"${widget.atmNo}","atmPIN":"${widget.atmPIN}","chkBal": 69, "savBal": 420}]');
    }
  }

  void readJSON() async {
    final Directory? jsonDir = await getDownloadsDirectory();
    String jsonPath = '${jsonDir?.path}/atm.json';
    File file = File(jsonPath);
    String jsonRaw = await file.readAsString();
    var jsonParsed = json.decode(jsonRaw);
    Map atmMap = jsonParsed.firstWhere((element) => element['atmNo'] == widget.atmNo);
    chkBal = atmMap['chkBal'];
    savBal = atmMap['savBal'];
  }


  void _routetoBalanceCheck() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  BalanceCheck(chkBal, savBal)),
    );
  }

  void _routetoWithdraw() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Withdraw(chkBal, savBal)),
    );
  }
}
