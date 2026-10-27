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
        appBar: AppBar(title: Text("Ex. 1")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                color: Colors.amberAccent,
                width: 5000,
                child: Text("Ahmed", textAlign: TextAlign.center),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                color: const Color.fromARGB(255, 59, 168, 117),
                width: 5000,
                child: Text(
                  "Ahmedjddddddddddddddddddddddddddddddddddddddddddiljijojookpp;oinlllllllllllnno;o;jo;mojojoijpiojpiojposjpoijp9j9pevjpsojepjsv9dddd",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.amberAccent,
                width: 5000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    Text("Ahmed"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
