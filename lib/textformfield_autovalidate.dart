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
  String? phone;
  // Set hiddenPhone = true "Hidden"
  bool hiddenPhone = true;
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
                  obscureText: hiddenPhone,
                  autovalidateMode: AutovalidateMode.always,
                  onChanged: (val) {
                    setState(() {
                      phone = val;
                    });
                  },
                  onSaved: (val) {
                    phone = val;
                  },
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        // State changed from True to False
                        setState(() {
                          hiddenPhone = !hiddenPhone;
                        });
                      },
                      icon: Icon(
                        hiddenPhone /* = true if true hide it if false visible it */
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    hint: Text("ex.012345678910"),
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 10),
                        Text("Phone Number"),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This Feild Is Required ";
                    }
                    if (val.length >= 13) {
                      return "Phone number must be 12 number only";
                    }

                    return null;
                  },
                ),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    if (form.currentState!/*=> FormState? but "!" sure it does not null */.validate()) {
                      form.currentState!.save(); // store val in phone var
                      debugPrint("Valid");
                    } else {
                      debugPrint("Invalid");
                    }
                  },
                  child: Text("Login"),
                ),
                Text("Phone is : $phone"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
