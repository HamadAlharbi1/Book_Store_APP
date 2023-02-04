import 'package:flutter/material.dart';

import '../contents/navigationBar.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                const Color.fromARGB(255, 24, 24, 24),
              ],
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(102, 220, 220, 219),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            height: 300,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 12),
              const Text(
                ' Done ... Thank You',
                style: TextStyle(color: Color.fromARGB(255, 34, 33, 33), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const navigationBar()));
                  },
                  icon: const Icon(Icons.home, color: Color.fromARGB(255, 24, 24, 24)),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 21, 21, 21)),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
