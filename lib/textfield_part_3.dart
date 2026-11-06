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
  // TextEditingController username = TextEditingController();
  String? textval;

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
                onChanged: (val) {
                  setState(() {
                    textval = val;
                  });
                },
                // controller: username
              ),
              MaterialButton(
                color: Colors.amber,
                onPressed: () => debugPrint("$textval"),
                child: Text("Print"),
              ),
              Text("$textval"),
            ],
          ),
        ),
      ),
    );
  }
}
