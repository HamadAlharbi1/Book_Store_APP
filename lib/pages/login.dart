import 'package:flutter/material.dart';

import '../contents/navigationBar.dart';
import 'Terms_and_Conditions.dart';
import 'about.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController usr = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final usrOne = 'Hamad';
  final passWord = '123';

  @override
  void dispose() {
    usr.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
              const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
              const Color.fromARGB(255, 24, 24, 24),
            ]),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const about()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'About EQRAA',
                                  style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => const TermsandConditions()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'Terms and Conditions',
                                  style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(102, 220, 220, 219),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 250,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 68, 124), fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(controller: usr, decoration: const InputDecoration(border: UnderlineInputBorder())),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(102, 220, 220, 219),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 68, 124), fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          controller: pass, decoration: const InputDecoration(border: UnderlineInputBorder())),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (usr.text == usrOne && pass.text == passWord) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('welcome'),
                                  actions: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                      IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const navigationBar()),
                                          );
                                        },
                                        icon: const Icon(Icons.login, color: Color.fromARGB(255, 151, 151, 151)),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151)),
                                      ),
                                    ]),
                                  ],
                                  backgroundColor: const Color.fromARGB(255, 68, 68, 68),
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    title: const Text(
                                      'user name or password not correct',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                    actions: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const navigationBar()),
                                            );
                                          },
                                          child: const Text(' Guest '),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151)),
                                        ),
                                      ]),
                                    ],
                                    backgroundColor: const Color.fromARGB(255, 68, 68, 68));
                              },
                            );
                          }
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
