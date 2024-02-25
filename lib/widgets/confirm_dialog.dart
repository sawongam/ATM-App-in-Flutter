import 'package:atmproject/utils/transaction.dart';
import 'package:flutter/material.dart';

void confirmDialog(
    BuildContext context, String atmNo, int amount, String balType) {
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
      content: Text(
        'Are you sure you want to withdraw \n Rs. $amount?',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          height: 1.5,
          letterSpacing: -0.32,
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              transaction(context, atmNo, amount, balType);
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              )),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF00B8EE)),
            ),
            child: const Text('Yes',
                style: TextStyle(
                  color: Colors.white,
                ))),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              )),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF00B8EE)),
            ),
            child: const Text('No',
                style: TextStyle(
                  color: Colors.white,
                ))),
      ],
    ),
  );
}
