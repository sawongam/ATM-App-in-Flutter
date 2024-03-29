import 'package:atmproject/screens/withdraw/tabs_withdraw/checking_container.dart';
import 'package:atmproject/screens/withdraw/tabs_withdraw/saving_container.dart';
import 'package:flutter/material.dart';

class Withdraw extends StatelessWidget {
  final String atmNo;
  final int initialTabIndex;

  const Withdraw(this.atmNo, this.initialTabIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTabIndex,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'WITHDRAW',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 480,
                  width: 369,
                  decoration: BoxDecoration(
                    color: const Color(0xFF232938),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF00B8EE),
                          ),
                          tabs: const [
                            Tab(text: 'CHECKING'),
                            Tab(text: 'SAVING'),
                          ]),
                      const SizedBox(height: 50),
                      Flexible(
                        child: TabBarView(children: [
                          CheckingContainer(atmNo),
                          SavingContainer(atmNo),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
