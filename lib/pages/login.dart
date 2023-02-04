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
              const Color.fromARGB(255, 65, 65, 191).withOpacity(0.8),
              const Color.fromARGB(255, 61, 61, 61),
            ]),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.network(
                        'https://assets.materialup.com/uploads/290503c8-aaf1-4f39-8502-f67076787f42/preview.jpg')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const about()));
                      },
                      child: const Text(
                        'لماذا صفحة ',
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 40, 60), fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsandConditions()));
                      },
                      child: const Text(
                        'الشروط والاحكام',
                        style:
                            TextStyle(color: Color.fromARGB(255, 0, 40, 60), fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'الإسم',
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'كلمة المرور',
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
                                  title: const Text(
                                    'welcome',
                                    style: TextStyle(color: Colors.white),
                                  ),
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
                                  backgroundColor: const Color.fromARGB(255, 0, 48, 83),
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    'الاسم او كلمة المرور غير صحيحه ',
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
                                        child: const Text(' الدخول كزائر '),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151)),
                                      ),
                                    ]),
                                  ],
                                  backgroundColor: const Color.fromARGB(255, 0, 48, 83),
                                );
                              },
                            );
                          }
                        },
                        child: const Text('تسجيل الدخول'),
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
