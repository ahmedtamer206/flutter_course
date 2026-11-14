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
  List pages = ["Page 1", "Page 2"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          height: 300,
          child: PageView.builder(
            itemCount: pages.length,
            itemBuilder: (context, i) {
              return Center(child: Text(pages[i]));
            },
          ),
        ),
      ),
    );
  }
}
