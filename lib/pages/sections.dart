import 'package:flutter/material.dart';

import '../modols/data.dart';

class sections extends StatefulWidget {
  const sections({
    Key? key,
  }) : super(key: key);

  @override
  State<sections> createState() => _sectionsState();
}

class _sectionsState extends State<sections> {
  final _pageC = PageController(initialPage: 0);
  final _pageD = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageC.dispose();
    _pageD.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                const Color.fromARGB(255, 56, 106, 95).withOpacity(0.8),
                const Color.fromARGB(255, 80, 59, 127),
              ])),
          child: ListView(children: [
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2WVhtf-YuBoYz4OA5eqR6uUB6J8LsD0nm9i90kuurgjVKIhbNy4dcdUK-NKEbaKb_PRE&usqp=CAU',
                      height: 200,
                    ))),
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              //    color: const Color.fromARGB(27, 255, 193, 7),
              height: 400,
              child: PageView(
                controller: _pageD,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (var product in Data1.W1)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                          child: Image.network(product.image)),
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () =>
                        _pageD.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
                    icon: const Icon(
                      Icons.fast_rewind,
                      size: 12,
                      color: Color.fromARGB(58, 255, 255, 255),
                    )),
                const SizedBox(
                  width: 32,
                ),
                IconButton(
                    onPressed: () =>
                        _pageD.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
                    icon: const Icon(
                      Icons.fast_forward_sharp,
                      size: 12,
                      color: Color.fromARGB(58, 255, 255, 255),
                    )),
              ],
            ),
          ]),
        ),
        backgroundColor: const Color.fromARGB(255, 24, 23, 23));
  }
}
