import 'package:atmproject/Services/confirm_dialog.dart';
import 'package:flutter/material.dart';

class CheckingManual extends StatelessWidget {
  final String atmNo;
  const CheckingManual(this.atmNo, {super.key});

  @override
  Widget build(BuildContext context) {
    var manualAmount = TextEditingController();

    return Column(
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
          child: TextField(
              controller: manualAmount,
              maxLength: 5,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                counterText: "",
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
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
        SizedBox(
          height: 40,
          width: 130,
          child: ElevatedButton(
            onPressed: () {
              confirmDialog(context,atmNo, int.parse(manualAmount.text));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00B8EE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                )),
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
    );
  }
}
