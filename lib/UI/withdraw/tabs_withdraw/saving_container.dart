import 'package:atmproject/Services/confirm_dialog.dart';
import 'package:atmproject/UI/withdraw/manual_cash_withdraw.dart';
import 'package:flutter/material.dart';

class SavingContainer extends StatelessWidget {
  const SavingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2, // Number of columns
              children: <Widget>[
                // Grid items
              ],
            ),
        // Expanded(
        //   child: GridView.builder(
        //     itemCount: 6,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       mainAxisSpacing: 30,
        //       crossAxisSpacing: 70,
        //     ),
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         height: 35,
        //         width: 15,
        //         color: Colors.red,
        //         child: Text('sassssssssssssssssssssssssss'),
        //         // child: ElevatedButton(
        //         //   onPressed: () {
        //         //     confirmDialog(context);
        //         //   },
        //         //   style: ElevatedButton.styleFrom(
        //         //     backgroundColor: const Color(0xf000000ff),
        //         //     shape: RoundedRectangleBorder(
        //         //       borderRadius: BorderRadius.circular(25),
        //         //       side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
        //         //     ),
        //         //     padding:
        //         //     const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        //         //   ),
        //         //   child: const Text(
        //         //     'Rs. 1000',
        //         //     style: TextStyle(
        //         //       color: Colors.white,
        //         //       fontSize: 16,
        //         //       fontWeight: FontWeight.w400,
        //         //     ),
        //         //   ),
        //         // ),
        //       );
        //     },
        //
        //   ),
        // ),
        SizedBox(
          height: 55,
          width: 110,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ManualCashWithdraw()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xf000000ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(85),
                side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            ),
            child: const Text(
              'Other',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
