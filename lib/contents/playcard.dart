import 'package:flutter/material.dart';

import '../pages/settings_page.dart';
import 'buttoms/playbackward.dart';
import 'buttoms/playforward.dart';
import 'buttoms/puse_buttom.dart';

class play_card extends StatelessWidget {
  const play_card({
    Key? key,
    required this.Playbackground,
    required this.Mycolor,
  }) : super(key: key);

  final Color Playbackground;
  final Color Mycolor;
  static const playingcolor = Color.fromARGB(166, 241, 241, 241);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color.fromARGB(166, 241, 241, 241),
          border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: .2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        const SizedBox(height: 45),
        Container(
          margin: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //  const Text('6:42', style: TextStyle(color: Colors.white, fontSize: 12)),
              const PlayForward(),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Mycolor, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(200))),
                  width: 80,
                  height: 80,
                  child: const PuseButtom()),
              const PlayBackward(),
              //    const Text('0:01', style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          alignment: Alignment.center,
          child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
              },
              icon: const Icon(Icons.settings, color: Color.fromARGB(255, 151, 151, 151))),
        ),
        const SizedBox(height: 12),
      ]),
    );
  }
}
