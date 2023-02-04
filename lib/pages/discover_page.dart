import 'package:flutter/material.dart';

import '../contents/Horizental_Cards.dart';
import '../contents/Suggested.dart';
import '../contents/others.dart';
import '../modols/data.dart';
import 'authors.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});
  static const Mycolor = Color.fromARGB(184, 232, 229, 229);
  static const Playbackground = Color.fromARGB(53, 113, 114, 113);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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
      body: SafeArea(
        child: ListView(children: [
          SizedBox(
            child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                      const Color.fromARGB(255, 56, 106, 95).withOpacity(0.8),
                      const Color.fromARGB(255, 124, 76, 229)
                    ])),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  color: const Color.fromARGB(19, 0, 0, 0),
                  child: Column(children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          SizedBox(
                              width: 300, child: TextField(textAlign: TextAlign.end, decoration: InputDecoration()))
                        ],
                      ),
                    ),
                    SizedBox(
                      //    color: const Color.fromARGB(27, 255, 193, 7),
                      height: 300,
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
                                        height: 250,
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
                                                const SizedBox(width: 50),
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
                            onPressed: () => _pageC.previousPage(
                                duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
                            icon: const Icon(
                              Icons.fast_rewind,
                              size: 12,
                              color: Color.fromARGB(58, 255, 255, 255),
                            )),
                        const SizedBox(
                          width: 32,
                        ),
                        IconButton(
                            onPressed: () => _pageC.nextPage(
                                duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad),
                            icon: const Icon(
                              Icons.fast_forward_sharp,
                              size: 12,
                              color: Color.fromARGB(58, 255, 255, 255),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(102, 235, 235, 235),
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 32,
                              ),
                              Text('المؤلفين  ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 33, 55),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 32,
                              ),
                            ],
                          ))
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    const authors(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(102, 235, 235, 235),
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 32,
                              ),
                              Text('جديدنا ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 33, 55),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 32,
                              ),
                            ],
                          ))
                    ]),
                    const SizedBox(height: 16),
                    const SizedBox(height: 200, child: HorizentalCards()),
                    const SizedBox(height: 32),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(102, 235, 235, 235),
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 32,
                              ),
                              Text('من اجلك .. ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 33, 55),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 32,
                              ),
                            ],
                          ))
                    ]),
                    const SizedBox(height: 16),
                    const SizedBox(height: 200, child: Suggested()),
                    const SizedBox(height: 32),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Container(
                          alignment: Alignment.topLeft,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(102, 235, 235, 235),
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 32,
                              ),
                              Text('انظر ايضا .. ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 33, 55),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 32,
                              ),
                            ],
                          ))
                    ]),
                    const SizedBox(height: 16),
                    const SizedBox(height: 200, child: Others()),
                  ]),
                )),
          ),
        ]),
      ),
      backgroundColor: DiscoverPage.Mycolor,
    );
  }
}
