import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Without "_" :  MyApp({super.key});
  MyApp({super.key});
  final List employee = [
    //or static const List employee = []
    {"name": "Ahmed Tamer", "age": 20, "position": "Software Engineer"},
    {"name": "Mohamed Ali", "age": 25, "position": "Product Manager"},
    {"name": "Sara Ahmed", "age": 30, "position": "UI/UX Designer"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Ahmed Tamer")),
        body: ListView(
          shrinkWrap: true, // to make the listview take only the space it needs
          children: [
            SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, i) => Divider(
                  color: Colors.black,
                  height: 2,
                  thickness: 5,
                ), //Divider is line
                physics: NeverScrollableScrollPhysics(), // to disable scrolling
                itemCount: employee.length,
                itemBuilder: (context, i) {
                  return Container(
                    padding: const EdgeInsets.all(5.0),
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: i.isEven ? Colors.grey[500] : Colors.grey[300],
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
          ],
        ),
      ),
    );
  }
}
