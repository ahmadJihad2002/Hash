import 'package:flutter/material.dart';
import 'package:hash/modules/category/category.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CategoryScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
