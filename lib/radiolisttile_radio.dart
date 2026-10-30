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
  String? country;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              RadioListTile(
                title: Text("Egypt"),
                onChanged: (val) {
                  setState(() {
                    country = val;
                  });
                },
                value: "Egypt",
                groupValue: country,
              ),
               RadioListTile(
                title: Text("Jordan"),
                onChanged: (val) {
                  setState(() {
                    country = val;
                  });
                },
                value: "Egypt",
                groupValue: country,
              ),
               RadioListTile(
                title: Text("Japan"),
                onChanged: (val) {
                  setState(() {
                    country = val;
                  });
                },
                value: "Egypt",
                groupValue: country,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
