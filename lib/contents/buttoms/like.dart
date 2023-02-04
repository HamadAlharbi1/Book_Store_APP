import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  var heartColor = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          heartColor = heartColor == Colors.white38 ? Colors.red : Colors.white38;
        });
      },
      child: SizedBox(
        width: 300,
        child: Icon(
          Icons.favorite,
          size: 30,
          color: heartColor,
        ),
      ),
    );
  }
}
