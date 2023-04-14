import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/uidesign.dart';

import 'httpdataget.dart';
import 'listview.dart';

class TestUi extends StatefulWidget {
  const TestUi({super.key});

  @override
  State<TestUi> createState() => _TestUiState();
}

class _TestUiState extends State<TestUi> {
  var _currentindex = 0;
  final pages = [GetApiData(), ListView_(), SimpleUi()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: const Color.fromARGB(255, 79, 121, 156),
          title: const Text("Test Ui"),
        ),
        body: pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important),
              label: "Notification",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
