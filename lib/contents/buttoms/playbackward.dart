import 'package:flutter/material.dart';

class PlayBackward extends StatefulWidget {
  const PlayBackward({super.key});

  @override
  State<PlayBackward> createState() => _PlayBackward();
}

class _PlayBackward extends State<PlayBackward> {
  var playbackward = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          playbackward = playbackward == Colors.white ? const Color.fromARGB(255, 102, 102, 102) : Colors.white;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.fast_forward_sharp,
            size: 40,
            color: playbackward,
          ),
        ],
      ),
    );
  }
}
