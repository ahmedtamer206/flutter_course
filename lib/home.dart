import 'package:material_ui/material_ui.dart';
import 'package:flutter_course/aboutus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          children: [
            Text(
              "Home Page",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.2),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => AboutUs()));
                },
                child: Text("Click here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
