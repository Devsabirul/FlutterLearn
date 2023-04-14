import 'package:flutter/material.dart';
import 'package:musicapp/screens/home.dart';
import 'package:musicapp/screens/search.dart';
import 'package:musicapp/screens/yourlibrary.dart';

class TestUi extends StatefulWidget {
  const TestUi({super.key});

  @override
  State<TestUi> createState() => _TestUiState();
}

class _TestUiState extends State<TestUi> {
  var _currentindex = 0;
  final pages = [HomePage(), SearchPage(), Yourlibrary()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          // selectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentindex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Library",
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
