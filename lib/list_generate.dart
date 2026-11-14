import 'package:material_ui/material_ui.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List information = [
    {"name": "Ahmed", "age": 20},
    {"name": "Tamer", "age": 55},
    {"name": "Aya", "age": 18},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List Generate")),
        body: ListView(
          children: [
            ...List.generate(information.length, (index) {
              return Card(
                child: ListTile(title: Text(information[index]["name"])),
              );
            }),
          ],
        ),
      ),
    );
  }
}
