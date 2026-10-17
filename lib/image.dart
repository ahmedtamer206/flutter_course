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
        appBar: AppBar(title: const Text('Image Example')),
        body: Container(
          color: Colors.grey[300],
           child: Image.asset(
            "images/IMG-20260428-WA0022.jpg",
            width:300,
            fit: BoxFit.cover,
          ),
          ),
        ),
      );
  }
}
