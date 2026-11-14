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
        initialIndex: 1, // active page
        child: Scaffold(
          appBar: AppBar(
            title: Text("TapBar"),
            bottom: TabBar(
              indicatorColor: Colors.amber,
              indicatorWeight: 4,
              indicatorAnimation: TabIndicatorAnimation.elastic,
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.all(0),
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(10),
                  icon: Icon(Icons.laptop), text: "data"),

                Tab(icon: Icon(Icons.laptop), text: "data"),
                Tab(icon: Icon(Icons.laptop), text: "data"),
              ],
            ),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10),
              child: TabBarView(
                children: [
                  Text("Mobile page"),
                  Text("Laptop page"),
                  Text("Pc page"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
