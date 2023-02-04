import 'package:flutter/material.dart';

class DiscoverPagecard extends StatelessWidget {
  const DiscoverPagecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/419elqsC7qS.jpg',
            height: 300,
          ),
        ],
      ),
    );
  }
}
