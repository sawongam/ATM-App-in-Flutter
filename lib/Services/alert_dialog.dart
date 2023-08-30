// import 'package:flutter/material.dart';
//
// class AlertDialog extends StatelessWidget {
//   const AlertDialog({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       actionsAlignment: MainAxisAlignment.spaceEvenly,
//       backgroundColor: const Color(0xFF223155),
//       title: const Text(
//         'Confirm Withdraw?',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: 18,
//           color: Colors.white,
//           fontWeight: FontWeight.w600,
//           height: 1.11,
//           letterSpacing: -0.32,
//         ),
//       ),
//       actions: [
//         Container(
//           // width: 100,
//           // height: 45,
//           // padding: const EdgeInsets.only(top: 13, bottom: 12),
//           child: ElevatedButton(
//               onPressed: () {},
//               style: ButtonStyle(
//                 shape: MaterialStateProperty.all<
//                     RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(27),
//                     )) ,
//                 backgroundColor:
//                 MaterialStateProperty.all<Color>(
//                     const Color(0xFF00B8EE)),
//               ),
//               child: const Text('Yes',
//                   style: TextStyle(
//                     color: Colors.white,
//                   )
//               )
//           ),
//         ),
//         ElevatedButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               shape: MaterialStateProperty.all<
//                   RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(27),
//                   )) ,
//               backgroundColor:
//               MaterialStateProperty.all<Color>(
//                   const Color(0xFF00B8EE)),
//             ),
//             child: const Text('No',
//                 style: TextStyle(
//                   color: Colors.white,
//                 )
//             )
//         ),
//       ],
//     )
//   }
// }
