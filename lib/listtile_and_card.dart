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
      appBar: AppBar(title: Text("Ahmed Tamer"),),
      body: ListView(children: [
        Card(child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:Colors.amberAccent,
            border: BoxBorder.all(color: Colors.black , width: 2),
            borderRadius: BorderRadius.circular(10)
          ),
          child:(Text("Ahmed Tamer")),
        ),)
      ],),
    ),
    );
  }
}
