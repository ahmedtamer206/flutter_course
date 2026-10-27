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
          // child: Icon(Icons.star , color: Colors.amberAccent, size: 100,),),
          child: IconButton(onPressed: () => debugPrint("Icon"),
          iconSize: 100,
           icon: Icon(Icons.ac_unit_rounded))
      ),
    ));
  }
}