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
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: Colors.black, height: 100),
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.red, height: 100),
              ),
              Expanded(child: Container(color: Colors.green, height: 100)),
              Expanded(child: Container(color: Colors.blue, height: 100)),
              Expanded(child: Container(color: Colors.green, height: 100)),
            ],
          ),
        ),
      ),
    );
  }
}
