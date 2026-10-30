import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stack")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(width: 300, height: 300, color: Colors.red),
              Positioned(
                bottom: -400,
                left: 0,
                child: Container(width: 200, height: 200, color: Colors.green),
              ),

              Container(width: 100, height: 100, color: Colors.blue),
              Positioned(bottom: 0, left: 0, child: Text("Ahmed")),
            ],
          ),
        ),
      ),
    );
  }
}
