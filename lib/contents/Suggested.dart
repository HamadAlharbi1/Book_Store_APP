import 'package:flutter/material.dart';
import 'package:project_2/modols/data.dart';

import '../pages/Listen.dart';
import '../pages/bookdetails.dart';
import '../pages/reading_page.dart';

var heartColor;

class Suggested extends StatefulWidget {
  const Suggested({
    Key? key,
  }) : super(key: key);

  @override
  State<Suggested> createState() => _SuggestedState();
}

class _SuggestedState extends State<Suggested> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (var product in Data1.suggested)
          Container(
            color: const Color.fromARGB(64, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                            const Color.fromARGB(255, 0, 61, 48).withOpacity(0.8),
                            const Color.fromARGB(255, 1, 0, 60)
                          ]),
                        ),
                        height: 500,
                        child: Column(children: [
                          const SizedBox(height: 30),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Bookdetails(value: product)));
                            },
                            child: Container(
                                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                                clipBehavior: Clip.hardEdge,
                                child: Image(image: NetworkImage(product.image), height: 200)),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              width: 180,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      product.name,
                                      style: const TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    product.author,
                                    maxLines: 1,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 240, 240, 241),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => reading_page(value: product)));
                                },
                                icon: const Icon(
                                  Icons.bookmark,
                                  size: 32,
                                  color: Color.fromARGB(255, 0, 126, 126),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bookdetails(
                                                value: product,
                                              )));
                                },
                                child: const Icon(
                                  Icons.find_in_page,
                                  size: 32,
                                  color: Color.fromARGB(255, 0, 126, 126),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Listen()));
                                },
                                child: const Icon(
                                  Icons.music_video,
                                  size: 32,
                                  color: Color.fromARGB(255, 0, 126, 126),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Data1.favorate.add(product);
                                  });
                                },
                                icon: const Icon(
                                  Icons.favorite,
                                  size: 32,
                                  color: Color.fromARGB(255, 0, 126, 126),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30)
                        ]),
                      ),
                    ),
                    isScrollControlled: true,
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(children: [
                    Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                        clipBehavior: Clip.hardEdge,
                        child: Image(image: NetworkImage(product.image), height: 200))
                  ]),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
