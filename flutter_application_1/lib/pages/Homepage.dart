import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Container")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Welcome to home page scrool view",
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: const Color.fromRGBO(243, 177, 33, 1),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: const Color.fromARGB(255, 3, 6, 8),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: const Color.fromARGB(255, 226, 33, 243),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: const Color.fromARGB(255, 243, 33, 33),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 100,
                color: const Color.fromARGB(255, 33, 243, 33),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
