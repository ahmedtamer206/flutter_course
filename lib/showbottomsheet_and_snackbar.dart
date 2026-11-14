import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(title: Text("Snack bar and show bottom Sheet")),
            body: Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  //showBottomSheet:

                  // scaffoldKey.currentState!.showBottomSheet(
                  //   (context) =>
                  //       Container(height: 100, width: 1000, color: Colors.amber),
                  // );
                  //---------------------------------------------------------------------------------------------
                  //snackbar :
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Done"),
                      action: SnackBarAction(
                        label: "Hide",
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                    ),
                  );
                },
                child: Text("show"),
              ),
            ),
          );
        },
      ),
    );
  }
}
