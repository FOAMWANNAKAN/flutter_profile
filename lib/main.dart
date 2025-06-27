import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App"),
          backgroundColor: const Color.fromARGB(255, 214, 246, 176),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset("assets/images/profile.png")],
        ),
      ),
    );
  }
}
