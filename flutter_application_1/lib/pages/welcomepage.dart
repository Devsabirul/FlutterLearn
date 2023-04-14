import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/testapp.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Image.asset("assets/images/lock_welcome.png"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Text(
                        "Welcome login screen",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Type keywords relative to your project"),
                      const Expanded(
                        child: Text("to find the illustrations"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 52,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 33, 150, 243),
                        child: OutlinedButton(
                            child: const Text(
                              "Getting Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TestUi()));
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ?"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "log in",
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
