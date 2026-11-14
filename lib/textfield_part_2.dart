import 'package:material_ui/material_ui.dart';

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
        appBar: AppBar(title: Text("Text Field Part 1")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                keyboardType:TextInputType.multiline ,
                minLines: 1,
                maxLength: 10,
                maxLines: 3,
                decoration: InputDecoration(
                  label: Text("Ahmed"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red , width: 4),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
