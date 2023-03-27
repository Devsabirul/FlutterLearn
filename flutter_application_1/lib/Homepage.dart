import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Center(
          child: Container(
            child: const Text("HELLO This is my first App Ui"),
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
