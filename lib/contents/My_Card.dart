import 'package:flutter/material.dart';

import 'buttoms/like.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: Stack(clipBehavior: Clip.hardEdge, children: [
        Image.network(
          'https://m.media-amazon.com/images/I/419elqsC7qS.jpg',
          height: 300,
        ),
        const Positioned(bottom: 30, child: Like()),
      ]),
    );
  }
}
