import 'package:flutter/material.dart';

import 'ThankYou.dart';

class pay_page extends StatelessWidget {
  const pay_page({super.key});
  @override
  Widget build(BuildContext context) {
    const usr = '';
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
            const Color.fromARGB(255, 24, 24, 24),
          ]),
        ),
        child: ListView(padding: const EdgeInsets.all(25), children: [
          const SizedBox(
            height: 70,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(102, 220, 220, 219),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Card Number',
                        style: TextStyle(color: Color.fromARGB(255, 0, 68, 124), fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(decoration: const InputDecoration(border: OutlineInputBorder())),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(102, 220, 220, 219),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'expire date',
                        style: TextStyle(color: Color.fromARGB(255, 0, 68, 124), fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(decoration: const InputDecoration(border: OutlineInputBorder())),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(102, 220, 220, 219),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(color: Color.fromARGB(255, 0, 68, 124), fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(decoration: const InputDecoration(border: OutlineInputBorder())),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151)),
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ThankYou()));
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 47, 87, 95)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(102, 91, 91, 91),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: const Text(
                      'pay',
                      style: TextStyle(
                          color: Color.fromARGB(255, 119, 120, 144), fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
