import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Homepage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {"/": (context) => HomePage()},
    );
  }
}
