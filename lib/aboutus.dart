import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About US")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(child: Text("About Us")),
      ),
    );
  }
}
