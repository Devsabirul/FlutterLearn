import 'package:flutter/material.dart';
import 'package:musicapp/models/category.dart';
import 'package:musicapp/services/category_operations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
          Text(
            category.name,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  createListOfCategories() {
    List<Category> categoryList =  CategoryOperations.getCategories();
    
  }

  Widget createGrid() {
    return GridView.count(
      children: [],
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 22.0),
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey.shade300,
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            createAppBar("Good morning"),
          ],
        ),
      ),
    );
  }
}
