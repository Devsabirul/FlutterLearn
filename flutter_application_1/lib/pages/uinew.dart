import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/drawer.dart';

class ResUi extends StatefulWidget {
  const ResUi({super.key});

  @override
  State<ResUi> createState() => _ResUiState();
}

class _ResUiState extends State<ResUi> {
  // ignore: prefer_final_fields
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  myText,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "Enter something here",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.only(top: 20),
              height: 50,
              width: 200,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    myText = _nameController.text;
                  });
                },
                child: const Text(
                  "Change",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.edit),
      // ),
    );
  }
}
