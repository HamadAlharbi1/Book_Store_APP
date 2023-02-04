import 'package:flutter/material.dart';
import 'package:project_2/pages/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: login(), debugShowCheckedModeBanner: false);
  }
}
