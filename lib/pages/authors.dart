import 'package:flutter/material.dart';
import 'package:project_2/modols/data.dart';

import 'authdetails.dart';

class authors extends StatefulWidget {
  const authors({
    Key? key,
  }) : super(key: key);

  @override
  State<authors> createState() => _authors();
}

class _authors extends State<authors> {
  var heartColor = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var product in Data1.W2)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: (() {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          'انتقال الى صفحة المؤلف ؟',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Author(
                                            value: product,
                                          )),
                                );
                              },
                              icon: const Icon(Icons.login, color: Color.fromARGB(255, 151, 151, 151)),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151)),
                            ),
                          ]),
                        ],
                        backgroundColor: const Color.fromARGB(245, 35, 116, 134),
                      );
                    },
                  );
                }),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(200),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image(image: NetworkImage(product.image), height: 100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
