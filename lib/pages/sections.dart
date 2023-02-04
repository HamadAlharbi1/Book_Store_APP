import 'package:flutter/material.dart';

import '../contents/buttoms/backicon.dart';
import 'discover_page.dart';
import 'playpage.dart';

class sections extends StatelessWidget {
  const sections({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(102, 220, 220, 219), borderRadius: BorderRadius.all(Radius.circular(12))),
                  width: 200,
                  height: 200,
                  child: Column(children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const DiscoverPage()));
                            },
                            child: Row(children: const [
                              Icon(Icons.book),
                              SizedBox(
                                width: 16,
                              ),
                              Text('READ ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 35, 36),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ])),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Row(children: const [
                              Icon(Icons.headphones),
                              SizedBox(
                                width: 16,
                              ),
                              Text('LISTEN ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 34, 35, 36),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ])),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const BackIcon()
                  ])))
        ]),
        backgroundColor: const Color.fromARGB(255, 24, 23, 23));
  }
}
