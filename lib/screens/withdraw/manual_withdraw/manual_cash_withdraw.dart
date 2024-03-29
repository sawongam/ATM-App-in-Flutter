import 'package:atmproject/screens/withdraw/manual_withdraw/checking_manual.dart';
import 'package:atmproject/screens/withdraw/manual_withdraw/saving_manual.dart';
import 'package:flutter/material.dart';

class ManualCashWithdraw extends StatelessWidget {
  final String atmNo;
  final int initialTabIndex;

  const ManualCashWithdraw(this.atmNo, this.initialTabIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: DefaultTabController(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 10),
                  const Text(
                    'WITHDRAW',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 69),
                  Container(
                    height: 260,
                    width: 369,
                    decoration: BoxDecoration(
                      color: const Color(0xFF232938),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 10),
                    child: Column(
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
                        Flexible(
                          child: TabBarView(children: [
                            CheckingManual(atmNo),
                            SavingManual(atmNo),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
