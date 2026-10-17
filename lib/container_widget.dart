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
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Subjects Online"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(100),
            border: BoxBorder.all(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: 5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(10, 10),
              ),
            ],
          ),
          width: 400,
          height: 400,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            top: 100,
            left: 50,
            right: 50,
            bottom: 100,
          ),
          margin: const EdgeInsets.all(50),

          child: Text(
            "Ahmed Tamer",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
/* notes:
1- alignment: it is used to align the child widget inside the container not to control the position of the container itself.
2- padding: it is used to give space inside the container between the child and the container
3- margin: it is used to give space outside the container between the container and other widgets.
4- Yio cant add color outside decoration in container widget because it will give error so you have to use color inside decoration.
*/
