import 'package:flutter/material.dart';
import 'package:project_2/modols/data.dart';

class Bookdetails extends StatelessWidget {
  final Product value; // object

  const Bookdetails({super.key, required this.value}); // construter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                const Color.fromARGB(255, 24, 24, 24),
              ]),
            ),
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                clipBehavior: Clip.hardEdge,
                child: Image.network(value.image, height: 300),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                  margin: const EdgeInsets.all(0),
                  clipBehavior: Clip.hardEdge,
                  child: Text(value.name,
                      style: const TextStyle(color: Colors.blueGrey, fontSize: 20, fontWeight: FontWeight.bold))),
              const SizedBox(
                height: 32,
              ),
              Container(
                margin: const EdgeInsets.all(24),
                child: Text(
                  value.author,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 207, 206, 206), fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromARGB(155, 255, 255, 255),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 64),
                child: Text(
                  value.describtion,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 46, 46, 46), fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.clip,
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
              const SizedBox(
                height: 350,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
