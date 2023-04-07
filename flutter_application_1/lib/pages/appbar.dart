import 'package:flutter/material.dart';

class AppBar_ extends StatelessWidget {
  const AppBar_({super.key});

  @override
  Widget build(BuildContext context) {
    var Images = [
      'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg',
      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
      'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg',
      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
      'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg',
      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
      'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg',
      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
      'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(
        //   Icons.camera,
        //   color: Colors.white,
        //   size: 37.0,
        // ),
        title: const Text(
          "Arohi's Studio",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        actions: const [
          Icon(
            Icons.timelapse_outlined,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.heart_broken,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.people,
            color: Colors.white,
            size: 37.0,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.red,
        elevation: 10,
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Image.network(
                  Images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: Images.length,
          ),
        ),
      ),
      drawer: const Drawer(),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important), label: "Notification"),
      ]),
    );
  }
}
