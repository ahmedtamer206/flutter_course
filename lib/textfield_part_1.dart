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
        appBar: AppBar(title: Text("Text Field Part 1")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(110, 0, 0, 0),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 7, 255, 143),
                child: SizedBox(height: 100, width: double.infinity),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(110, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                   filled: true,
                   fillColor: Colors.grey,

                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email, size: 18),
                      SizedBox(width: 10),
                      Text("Email"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
