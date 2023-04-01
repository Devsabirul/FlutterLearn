import 'package:flutter/material.dart';

class AppBar_ extends StatelessWidget {
  const AppBar_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(
        //   Icons.camera,
        //   color: Colors.white,
        //   size: 37.0,
        // ),
        title: const Text(
          "Arohi's Studio",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        actions: const [
          Icon(
            Icons.timelapse_outlined,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.heart_broken,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.people,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.red,
        elevation: 10,
        toolbarHeight: 70,
      ),
      body: const SafeArea(
          child: Center(
        child: Text("Welcome to Arohi's Studio"),
      )),
      drawer: const Drawer(),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important), label: "Notification"),
      ]),
    );
  }
}
