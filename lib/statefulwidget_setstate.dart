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
        appBar: AppBar(title: Text("Statefulwidget")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    status = true;
                  });
                },
                icon: Icon(Icons.add),
              ),
              status ? Icon(Icons.star) : Icon(Icons.star_border_outlined),
              IconButton(
                onPressed: () {
                  setState(() {
                    status = false;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
