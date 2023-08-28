import 'package:flutter/material.dart';

class ManualCashWithdraw extends StatelessWidget {
  const ManualCashWithdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF101727), Color(0xFF111418)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'WITHDRAW',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 333,
                width: 369,
                decoration: BoxDecoration(
                  color: const Color(0xFF232938),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    TextField(
                        keyboardType: TextInputType.number,
                        // maxLength: 16,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF232938),
                          labelText: 'ATM Card Number',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
                          labelStyle: const TextStyle(
                            color: Color(0xFF999999),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: const Color(0xFF999999),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const AtmPin(),
                              //   ),
                              // );
                            },
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        )),
                    ElevatedButton(onPressed: () {},
                        child: Text('Withdraw'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
