import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetApiData extends StatefulWidget {
  const GetApiData({super.key});

  @override
  State<GetApiData> createState() => _GetApiDataState();
}

class _GetApiDataState extends State<GetApiData> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Get"),
      ),
      body: data != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(data[index]['url']),
                      ),
                    ],
                  ),
                );
              },
              itemCount: data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
    );
  }
}
