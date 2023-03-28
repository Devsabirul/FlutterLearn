import 'package:flutter/material.dart';
import 'pages/Homepage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: "/home",
      routes: {"/": (context) => LoginPage(), "/home": (context) => HomePage()},
    );
  }
}
