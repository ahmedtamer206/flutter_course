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
        appBar: AppBar(title: Text("Switch")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 200,
                child: SwitchListTile(
                  activeThumbColor: Colors.black87,
                  inactiveThumbColor: Colors.amberAccent,
                  inactiveTrackColor: Colors.blue,

                  value: status,
                  onChanged: (value) => setState(() {
                    status = value;
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
