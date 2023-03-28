import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/Homepage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {"/": (context) => LoginPage(), "/home": (context) => HomePage()},
    );
  }
}
