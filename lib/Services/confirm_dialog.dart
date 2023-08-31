import 'package:atmproject/Services/confirm_dialog.dart';
import 'package:atmproject/Services/success_dialog.dart';
import 'package:flutter/material.dart';

void confirmDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      backgroundColor: const Color(0xFF223155),
      title: const Text(
        'Confirm Withdraw?',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.11,
          letterSpacing: -0.32,
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              successDialog(context);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  )) ,
              backgroundColor:
              MaterialStateProperty.all<Color>(
                  const Color(0xFF00B8EE)),
            ),
            child: const Text('Yes',
                style: TextStyle(
                  color: Colors.white,
                )
            )
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  )) ,
              backgroundColor:
              MaterialStateProperty.all<Color>(
                  const Color(0xFF00B8EE)),
            ),
            child: const Text('No',
                style: TextStyle(
                  color: Colors.white,
                )
            )
        ),
      ],
    ),
  );
}