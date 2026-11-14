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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title: Text("TapBar"), bottom: TabBar(tabs: [
            Tab(child: Text("Pc"),),
            Tab(child: Text("Laptop"),),
            Tab(child: Text("Phone"),),
          ]),),
          body: SafeArea(child: Container(padding: EdgeInsets.all(10),
          child: TabBarView(children: [
            Text("Mobile page"),
            Text("Laptop page"),
            Text("Pc page"),

          ]),)),
        ),
      ),
    );
  }
}
