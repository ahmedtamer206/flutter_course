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
        appBar: AppBar(title: Text("Checkbox")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Choose your fav. hobbies"),
              CheckboxListTile(
                title: Text("Programming"),
                value: status,
                onChanged: (val) {
                  setState(() {
                    status = val!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
