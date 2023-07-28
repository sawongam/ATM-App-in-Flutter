import 'package:flutter/material.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

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
            children: [
              Spacer(flex: 5),
              const Text(
                'WITHDRAW',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(flex: 5,),
              Container(
                height: 333,
                width: 369,
                decoration: BoxDecoration(
                  color: const Color(0xFF232938),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xf000000ff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(85),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xf000000ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(85),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xf000000ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(85),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
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
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xf000000ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(85),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                      ),
                      child: const Text(
                        'Rs 20,000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 5,),
            ],
          ),
            ),
      ),
    );
  }
}
