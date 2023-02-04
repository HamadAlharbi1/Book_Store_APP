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
        body: ListView(children: [
          SizedBox(
            //    color: const Color.fromARGB(27, 255, 193, 7),
            height: 240,
            child: PageView(
              controller: _pageC,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (var product in Data1.W1)
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 32, right: 32),
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(102, 220, 220, 219),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              height: 195,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.format_quote_sharp, size: 50),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(product.describtion,
                                            style: const TextStyle(
                                                color: Color.fromARGB(255, 26, 0, 77),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900),
                                            textAlign: TextAlign.right,
                                            overflow: TextOverflow.clip),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(Icons.format_quote_sharp, size: 50),
                                      const SizedBox(width: 100),
                                      Text(product.author,
                                          style: const TextStyle(
                                            color: Color.fromARGB(255, 20, 0, 60),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.justify,
                                          overflow: TextOverflow.clip),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () =>
                      _pageC.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
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
                      _pageC.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
                  icon: const Icon(
                    Icons.fast_forward_sharp,
                    size: 12,
                    color: Color.fromARGB(58, 255, 255, 255),
                  )),
            ],
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
        backgroundColor: const Color.fromARGB(255, 24, 23, 23));
  }
}
