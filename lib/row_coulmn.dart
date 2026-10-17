import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: (Text("Ahmed Tamer pro"))),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(
                color: const Color.fromARGB(255, 12, 12, 12),
                width: 100,
                height: 100,
              ),
              Container(color: Colors.black, width: 100, height: 100),
              Container(color: Colors.yellow, width: 100, height: 100),
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.green, width: 100, height: 100),
              Container(
                color: const Color.fromARGB(9, 0, 0, 0),
                width: 100,
                height: 100,
              ),
              Container(
                color: const Color.fromARGB(255, 166, 161, 116),
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
