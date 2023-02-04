import 'package:flutter/material.dart';
import 'package:project_2/modols/data.dart';

import '../pages/Bookdetails.dart';
import '../pages/reading_page.dart';

class Others extends StatefulWidget {
  const Others({
    Key? key,
  }) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (var product in Data1.others)
          Padding(
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
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                          const Color.fromARGB(255, 0, 0, 0),
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
                              color: Color.fromARGB(102, 220, 220, 219),
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
                                        color: Color.fromARGB(255, 1, 1, 1), fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(102, 220, 220, 219),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(product.author,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 1, 1, 1), fontSize: 20, fontWeight: FontWeight.bold),
                                    maxLines: 1),
                              ]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => reading_page(
                                              value: product,
                                            )));
                              },
                              icon: const Icon(
                                Icons.bookmark,
                                color: Color.fromARGB(255, 154, 154, 154),
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
                                Icons.search,
                                color: Color.fromARGB(255, 154, 154, 154),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  Data1.cart.add(product);
                                });
                              },
                              icon: const Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 154, 154, 154),
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
      ],
    );
  }
}
