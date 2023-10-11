import 'package:flutter/material.dart';

class ManualCashWithdraw extends StatelessWidget {
  const ManualCashWithdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: DefaultTabController(
        length: 2,
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
                          child: TabBarView(
                              children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 274,
                                  // height: 50,
                                  padding: const EdgeInsets.all(16),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF232938),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                  ),
                                  child: const TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFF12161C),
                                        labelText: 'Enter Withdraw Amount',
                                        contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                        labelStyle: TextStyle(
                                          color: Color(0xFF999999),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(80),
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                                SizedBox(
                                  height: 40,
                                  width: 130,
                                  child: ElevatedButton(
                                      onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF00B8EE),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(85),
                                        )
                                    ),
                                      child: const Text(
                                        'Withdraw →',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          height: 1.25,
                                          letterSpacing: -0.32,
                                        ),
                                      ),
                                  ),
                                ),
                              ],
                            ),
                            const Text('data'),
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
