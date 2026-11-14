import 'package:material_ui/material_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Subjects Online")),
        body: Text(
          "Accounting",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 40,
            fontWeight: FontWeight.w600,
            // backgroundColor: Colors.pink,
            letterSpacing: 2,
            wordSpacing: 10,
            height: 1.5,
            background: Paint()..color = const Color.fromARGB(255, 166, 53, 70),
          ),
        ),
      ),
    );
  }
}
