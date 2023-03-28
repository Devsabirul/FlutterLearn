import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Container")),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Color.fromARGB(255, 239, 255, 11),
        ),
      ),
    );
  }
}
