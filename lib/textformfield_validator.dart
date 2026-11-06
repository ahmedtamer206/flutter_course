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
  GlobalKey<FormState> form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Field Part 1")),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: form,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    label:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.phone), SizedBox(width: 10,), Text("Phone Number")]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This Feild Is Required ";
                    }

                    return null;
                  },
                ),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      debugPrint("Valid");
                    } else {
                      debugPrint("Invalid");
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
