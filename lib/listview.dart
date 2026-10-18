import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List employee = [
    {"name": "Ahmed Tamer", "age": 20, "position": "Software Engineer"},
    {"name": "Mohamed Ali", "age": 25, "position": "Product Manager"},
    {"name": "Sara Ahmed", "age": 30, "position": "UI/UX Designer"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Ahmed Tamer")),
        body: SizedBox(
          child: ListView.builder(
            itemCount: employee.length,
            itemBuilder: (context, i) {
              return Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "1- Name: ${employee[i]["name"]} \n 2- Age: ${employee[i]["age"]} \n 3- Position: ${employee[i]["position"]}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
