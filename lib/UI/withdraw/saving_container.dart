import 'package:atmproject/UI/manual_cash_withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavingContainer extends StatelessWidget {
  const SavingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
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
                    content: const Text(
                      'Do you really want to withdraw?',
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
                      Container(
                        width: 100,
                        height: 45,
                        padding: const EdgeInsets.only(top: 13, bottom: 12),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF00B8EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Yes')),
                      ),
                      ElevatedButton(onPressed: () {}, child: const Text('No')),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              ),
              child: const Text(
                'Rs. 1000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
              ),
              child: const Text(
                'Rs. 5000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              ),
              child: const Text(
                'Rs. 10,000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              ),
              child: const Text(
                'Rs. 15,000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              ),
              child: const Text(
                'Rs. 20,000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: 110,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xf000000ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(85),
                  side: const BorderSide(width: 0.69, color: Color(0xFF8FA0A1)),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              ),
              child: const Text(
                'Rs. 25,000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 30),
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
    ]);
  }
}
