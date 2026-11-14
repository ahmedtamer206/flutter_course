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
  String? phone;
  // Set hiddenPhone = true "Hidden" but false "Visible"
  bool hiddenPhone = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
         AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.list))
          ],
          centerTitle: true,
          title: Text("Text Field Part 1")),
        
      ),
    );
  }
}
