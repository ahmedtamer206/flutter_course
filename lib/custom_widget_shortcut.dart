import 'package:material_ui/material_ui.dart';
import 'package:flutter_course/custom_widget_shortcut2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              UserCard(
                name: "Ahmed",
                email: "ahmedtamerfoc2006@gmail.com",
                date: "20/06/2006",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


