import 'package:atmproject/UI/withdraw/checking_container.dart';
import 'package:atmproject/UI/withdraw/saving_container.dart';
import 'package:flutter/material.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                          ]
                      ),
                      const SizedBox(height: 50),
                      const Flexible(
                        child: TabBarView(
                          children: [
                            CheckingContainer(),
                            SavingContainer(),
                          ]
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           showDialog(
                      //             context: context,
                      //             builder: (context) =>
                      //                 AlertDialog(
                      //                   backgroundColor: const Color(
                      //                       0xFF223155),
                      //                   title: const Text(
                      //                     'Confirm Withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   content: Text(
                      //                     'Do you really want to withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   actions: [
                      //                     Container(
                      //                       width: 100,
                      //                       height: 45,
                      //                       padding: const EdgeInsets.only(
                      //                           top: 13, bottom: 12),
                      //                       decoration: ShapeDecoration(
                      //                         color: Color(0xFF00B8EE),
                      //                         shape: RoundedRectangleBorder(
                      //                           borderRadius:
                      //                           BorderRadius.circular(27),
                      //                         ),
                      //                       ),
                      //                       child: ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Yes')),
                      //                     ),
                      //                     ElevatedButton(
                      //                         onPressed: () {},
                      //                         child: Text('No')),
                      //                   ],
                      //                 ),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 15, vertical: 18),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 1000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 15, vertical: 18),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 5000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(height: 15),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           showDialog(
                      //             context: context,
                      //             builder: (context) =>
                      //                 AlertDialog(
                      //                   backgroundColor: const Color(
                      //                       0xFF223155),
                      //                   title: const Text(
                      //                     'Confirm Withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   content: const Text(
                      //                     'Do you really want to withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   actions: [
                      //                     Container(
                      //                       width: 100,
                      //                       height: 45,
                      //                       padding: const EdgeInsets.only(
                      //                           top: 13, bottom: 12),
                      //                       decoration: ShapeDecoration(
                      //                         color: Color(0xFF00B8EE),
                      //                         shape: RoundedRectangleBorder(
                      //                           borderRadius:
                      //                           BorderRadius.circular(27),
                      //                         ),
                      //                       ),
                      //                       child: ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Yes')),
                      //                     ),
                      //                     ElevatedButton(
                      //                         onPressed: () {},
                      //                         child: Text('No')),
                      //                   ],
                      //                 ),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 15, vertical: 18),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 10,000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           showDialog(
                      //             context: context,
                      //             builder: (context) =>
                      //                 AlertDialog(
                      //                   backgroundColor: const Color(
                      //                       0xFF223155),
                      //                   title: const Text(
                      //                     'Confirm Withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   content: Text(
                      //                     'Do you really want to withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   actions: [
                      //                     Container(
                      //                       width: 100,
                      //                       height: 45,
                      //                       padding: const EdgeInsets.only(
                      //                           top: 13, bottom: 12),
                      //                       decoration: ShapeDecoration(
                      //                         color: Color(0xFF00B8EE),
                      //                         shape: RoundedRectangleBorder(
                      //                           borderRadius:
                      //                           BorderRadius.circular(27),
                      //                         ),
                      //                       ),
                      //                       child: ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Yes')),
                      //                     ),
                      //                     ElevatedButton(
                      //                         onPressed: () {},
                      //                         child: Text('No')),
                      //                   ],
                      //                 ),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 15, vertical: 18),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 15,000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(height: 15),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           showDialog(
                      //             context: context,
                      //             builder: (context) =>
                      //                 AlertDialog(
                      //                   backgroundColor: const Color(
                      //                       0xFF223155),
                      //                   title: const Text(
                      //                     'Confirm Withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   content: Text(
                      //                     'Do you really want to withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   actions: [
                      //                     Container(
                      //                       width: 100,
                      //                       height: 45,
                      //                       padding: const EdgeInsets.only(
                      //                           top: 13, bottom: 12),
                      //                       decoration: ShapeDecoration(
                      //                         color: Color(0xFF00B8EE),
                      //                         shape: RoundedRectangleBorder(
                      //                           borderRadius:
                      //                           BorderRadius.circular(27),
                      //                         ),
                      //                       ),
                      //                       child: ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Yes')),
                      //                     ),
                      //                     ElevatedButton(
                      //                         onPressed: () {},
                      //                         child: Text('No')),
                      //                   ],
                      //                 ),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 10, vertical: 13),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 20,000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       height: 55,
                      //       width: 110,
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           showDialog(
                      //             context: context,
                      //             builder: (context) =>
                      //                 AlertDialog(
                      //                   backgroundColor: const Color(
                      //                       0xFF223155),
                      //                   title: const Text(
                      //                     'Confirm Withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   content: Text(
                      //                     'Do you really want to withdraw?',
                      //                     textAlign: TextAlign.center,
                      //                     style: TextStyle(
                      //                       fontSize: 18,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.w600,
                      //                       height: 1.11,
                      //                       letterSpacing: -0.32,
                      //                     ),
                      //                   ),
                      //                   actions: [
                      //                     Container(
                      //                       width: 100,
                      //                       height: 45,
                      //                       padding: const EdgeInsets.only(
                      //                           top: 13, bottom: 12),
                      //                       decoration: ShapeDecoration(
                      //                         color: Color(0xFF00B8EE),
                      //                         shape: RoundedRectangleBorder(
                      //                           borderRadius:
                      //                           BorderRadius.circular(27),
                      //                         ),
                      //                       ),
                      //                       child: ElevatedButton(
                      //                           onPressed: () {},
                      //                           child: Text('Yes')),
                      //                     ),
                      //                     ElevatedButton(
                      //                         onPressed: () {},
                      //                         child: Text('No')),
                      //                   ],
                      //                 ),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //           backgroundColor: const Color(0xf000000ff),
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(85),
                      //             side: BorderSide(
                      //                 width: 0.69, color: Color(0xFF8FA0A1)),
                      //           ),
                      //           padding: const EdgeInsets.symmetric(
                      //               horizontal: 10, vertical: 13),
                      //         ),
                      //         child: const Text(
                      //           'Rs. 25,000',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 55,
                      //   width: 110,
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) =>
                      //             const ManualCashWithdraw()),
                      //       );
                      //     },
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: const Color(0xf000000ff),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(85),
                      //         side: BorderSide(
                      //             width: 0.69, color: Color(0xFF8FA0A1)),
                      //       ),
                      //       padding: const EdgeInsets.symmetric(
                      //           horizontal: 15, vertical: 18),
                      //     ),
                      //     child: const Text(
                      //       'Other',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
