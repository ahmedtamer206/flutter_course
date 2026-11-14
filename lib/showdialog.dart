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
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text("Show Dialog / Alert")),
            body: Center(
              child: MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (dialogContext) {
                      return AlertDialog(
                        icon: Icon(Icons.delete_forever),
                        title: Text("Alert"),
                        content: Text("Would you Delete This Item?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(dialogContext);
                            },
                            child: Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(dialogContext);
                            },
                            child: Text("Delete"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Alert", style: TextStyle(color: Colors.white)),
              ),
            ),
          );
        },
      ),
    );
  }
}
