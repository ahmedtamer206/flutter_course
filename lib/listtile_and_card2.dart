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
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                ),

                elevation: 0.0,
                child: ListTile(
                 /*1*/ leading: Text("1"),
                 /*2*/ title: Text("Title"),
                 /*3*/ subtitle: Text("Sub Title"),
                 /*4*/ trailing: Icon(Icons.star),
                  isThreeLine: true,
                  enabled: false,
                  onTap: () => debugPrint("ontap"),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () => debugPrint("ontap"),
                  leading: Text("2"),
                  title: Text("Title"),
                  subtitle: Text("Sub Title"),
                  trailing: Text("Trailing"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
