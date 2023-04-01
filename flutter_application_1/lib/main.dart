import 'package:flutter/material.dart';
import 'pages/Homepage.dart';
import 'pages/listview.dart';
import 'pages/decorationview.dart';
import 'pages/uidesign.dart';
import 'pages/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/appbar",
      routes: {
        "/": (context) => HomePage(),
        "/listview": (context) => const ListView_(),
        "/decoration": (context) => const DecorationView(),
        "/simpleui": (context) => const SimpleUi(),
        "/appbar": (context) => const AppBar_()
      },
    );
  }
}
