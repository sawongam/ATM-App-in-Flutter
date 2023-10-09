import 'dart:convert';
import 'dart:io';

import 'package:atmproject/UI/withdraw/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class BalanceCheck extends StatefulWidget {
  const BalanceCheck({super.key});

  @override
  State<BalanceCheck> createState() => _BalanceCheckState();
}

class _BalanceCheckState extends State<BalanceCheck> {

  var chkBal = 0;
  var savBal = 0;

  @override
  void initState() {
    super.initState();
    fetchJSON();
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
                  'ACCOUNT BALANCE',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 100),
                const Spacer(),
                Container(
                  width: 335,
                  height: 150,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF232938),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ACCOUNT TYPE',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'CHECKING',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.15,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'BALANCE',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                      const SizedBox(height: 5),
                       Text(
                         'Rs. ${chkBal.toString()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.15,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Withdraw()
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset('assets/images/Share.png'),
                                const SizedBox(width: 5),
                                const Text(
                                  'WITHDRAW',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 335,
                  height: 150,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF232938),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ACCOUNT TYPE',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'SAVING',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.15,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'BALANCE',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                      const SizedBox(height: 5),
                       Text(
                        'Rs. ${savBal.toString()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.15,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Withdraw()
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset('assets/images/Share.png'),
                                const SizedBox(width: 5),
                                const Text(
                                  'WITHDRAW',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 5),
              ]),
        ),
      ),
    );
  }

  void fetchJSON() async {
    final Directory? jsonDir = await getDownloadsDirectory();
    String jsonPath = '${jsonDir?.path}/atm.json';
    File file = File(jsonPath);
    String jsonRaw = await file.readAsString();
    var jsonParsed = json.decode(jsonRaw);
    setState(() {
      chkBal = jsonParsed[0]['chkBal'];
      savBal = jsonParsed[0]['savBal'];
    });
  }
}
