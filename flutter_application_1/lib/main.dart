import 'package:flutter/material.dart';
import 'pages/Homepage.dart';
import 'pages/listview.dart';
import 'pages/decorationview.dart';
import 'pages/uidesign.dart';
import 'pages/appbar.dart';
import 'pages/testapp.dart';
import 'pages/uinew.dart';
import 'pages/httpdataget.dart';
import 'pages/welcomepage.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: "/welcome",
      routes: {
        "/": (context) => HomePage(),
        "/listview": (context) => const ListView_(),
        "/decoration": (context) => const DecorationView(),
        "/simpleui": (context) => const SimpleUi(),
        "/appbar": (context) => const AppBar_(),
        "/testui": (context) => const TestUi(),
        "/uinew": (context) => const ResUi(),
        "/dataget": (context) => const GetApiData(),
        "/welcome": (context) => const WelcomePage(),
      },
    );
  }
}
