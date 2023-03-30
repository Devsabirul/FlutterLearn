import 'package:flutter/material.dart';

class DecorationView extends StatelessWidget {
  const DecorationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 36, 151, 40),
        child: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 17, 0),
              borderRadius: BorderRadius.circular(75),
            ),
          ),
        ),
      ),
    );
  }
}
