import 'package:flutter/material.dart';

void successDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      backgroundColor: Color(0xFF223155),
      title: Text(
        'Withdraw Successful',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.11,
          letterSpacing: -0.32,
        ),
      ),
      icon: Icon(
        Icons.check_circle,
        color: Color(0xFF00B8EE),
        size: 50,
      ),
    ),
  );
}