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
  GlobalKey<ScaffoldState> drawer = GlobalKey();
  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.sizeOf(context).width;

    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          width: (screenWidth * 0.8).clamp(260.0, 360.0),

          child: Container(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(15),
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Your Account"),
                    subtitle: Text("Ahmed Tamer"),
                    leading: Icon(Icons.person_2_outlined),

                    onTap: () {
                      debugPrint("Clicked");
                    },
                  ),
                  ListTile(
                    title: Text("Your Account"),
                    subtitle: Text("Ahmed Tamer"),
                    leading: Icon(Icons.person_2_outlined),

                    onTap: () {
                      debugPrint("Clicked");
                    },
                  ),
                  ListTile(
                    title: Text("Your Account"),
                    subtitle: Text("Ahmed Tamer"),
                    leading: Icon(Icons.person_2_outlined),

                    onTap: () {
                      debugPrint("Clicked");
                    },
                  ),
                  ListTile(
                    title: Text("Your Account"),
                    subtitle: Text("Ahmed Tamer"),
                    leading: Icon(Icons.person_2_outlined),

                    onTap: () {
                      debugPrint("Clicked");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        key: drawer,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),

            child: Row(
              children: [
                MaterialButton(
                  color: const Color.fromARGB(100, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  onPressed: () {
                    drawer.currentState!.openDrawer();
                  },
                  child: Icon(Icons.list),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
