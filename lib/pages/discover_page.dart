import 'package:flutter/material.dart';
import '../contents/Suggested.dart';
import '../contents/others.dart';
import '../contents/Horizental_Cards.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});
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
            child: Column(children: [
              const SizedBox(height: 20),
              // const SizedBox(height: 200, child: TopBageDiscover()),
              const Divider(color: Colors.grey),
              const SizedBox(height: 32),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(102, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Text(
                  'Featured New Books',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 200, child: HorizentalCards()),
              const SizedBox(height: 32),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(102, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Text(
                  'Suggested To You',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 200, child: Suggested()),
              const SizedBox(height: 32),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(102, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Text(
                  'Health, mind and body',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 200, child: Others()),
            ]),
          ),
        ]),
      ),
      backgroundColor: Mycolor,
    );
  }
}
