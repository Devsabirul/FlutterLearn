import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Container")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.brown,
            child: InkWell(
              onDoubleTap: () => {
                print("On Duble Tap"),
              },
              onLongPress: () => {
                print("On Long Tap"),
              },
              onTap: () => {print("On Tap")},
            ),
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
