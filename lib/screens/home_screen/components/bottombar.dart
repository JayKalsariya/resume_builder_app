import 'package:flutter/material.dart';

BottomNavigationBar bottomBar() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.article_sharp),
        label: 'Templates',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favourites',
      ),
      // BottomNavigationBarItem(
      //     icon: Icon(Icons.settings), label: 'Settings'),
    ],
  );
}
