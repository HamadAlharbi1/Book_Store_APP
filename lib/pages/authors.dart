import 'package:flutter/material.dart';

class authors extends StatelessWidget {
  const authors({super.key});
  static const Mycolor = Color.fromARGB(184, 232, 229, 229);
  static const Playbackground = Color.fromARGB(53, 113, 114, 113);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                const Color.fromARGB(255, 24, 24, 24),
              ]),
            ),
            child: Column(children: const [
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              SizedBox(height: 32),
            ]),
          ),
        ]),
      ),
      backgroundColor: Mycolor,
    );
  }
}
