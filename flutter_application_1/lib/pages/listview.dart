import 'package:flutter/material.dart';

// ignore: camel_case_types
class ListView_ extends StatelessWidget {
  const ListView_({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = [
      'Rakib',
      'Roni',
      'Romzan',
      'Rubel',
      'Rana',
      'Robiul',
      'Rohan',
      'Sabil',
      'Kawsar',
      'Kollol',
      'Korola',
      'Rubel',
      'Rana',
      'Robiul',
      'Rohan',
      'Sabil',
      'Kawsar',
      'Kollol',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrName[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          );
        },
        itemCount: arrName.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 20,
            thickness: 2,
          );
        },
      ),
    );
  }
}
