import 'package:flutter/material.dart';
import 'package:atmproject/balance_check.dart';
import 'package:atmproject/withdraw.dart';
import 'package:flutter/services.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'MENU',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 169),
              SizedBox(
                width: 266,
                height: 52,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BalanceCheck()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF232938),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(85),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
              const SizedBox(height: 40),
              SizedBox(
                width: 266,
                height: 52,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Withdraw()
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF232938),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(85),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
              const SizedBox(height: 40),
              SizedBox(
                width: 266,
                height: 52,
                child: ElevatedButton(
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF232938),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(85),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
            ]
          ),
        ),
    ),
    );
  }
}
