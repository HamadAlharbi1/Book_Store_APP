import 'package:flutter/material.dart';

class Checkbottom extends StatefulWidget {
  const Checkbottom({super.key});

  @override
  State<Checkbottom> createState() => _PlayBackward();
}

class _PlayBackward extends State<Checkbottom> {
  var checkbottom = Icons.circle_outlined;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          checkbottom = checkbottom == Icons.circle_outlined ? Icons.circle_sharp : Icons.circle_outlined;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            checkbottom,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
