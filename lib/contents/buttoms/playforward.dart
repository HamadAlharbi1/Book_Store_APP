import 'package:flutter/material.dart';

class PlayForward extends StatefulWidget {
  const PlayForward({super.key});

  @override
  State<PlayForward> createState() => _PlayForward();
}

class _PlayForward extends State<PlayForward> {
  var playforward = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          playforward = playforward == Colors.white ? const Color.fromARGB(255, 102, 102, 102) : Colors.white;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.fast_rewind,
            size: 40,
            color: playforward,
          ),
        ],
      ),
    );
  }
}
