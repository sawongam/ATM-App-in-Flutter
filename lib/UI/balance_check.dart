import 'package:atmproject/UI/withdraw.dart';
import 'package:flutter/material.dart';

class BalanceCheck extends StatelessWidget {
  const BalanceCheck({super.key});

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
                      const Text(
                        'Rs. 69.00',
                        style: TextStyle(
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
                      const Text(
                        'Rs. 69.00',
                        style: TextStyle(
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
}
