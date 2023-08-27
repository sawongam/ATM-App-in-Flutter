import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            // const Spacer(flex: 5),
            const Text(
              'ACCOUNT BALANCE',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),

            // const Spacer(flex: 7),

            Container(
              width: 335,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFF232938),
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Account Type',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'CHECKING',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rs. 69.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'WITHDRAW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            // const Spacer(flex: 5),

          ]),
        ),
      ),
    );
  }
}
