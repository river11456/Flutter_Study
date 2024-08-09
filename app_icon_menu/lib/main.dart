import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appbar icon menu',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('menu button is clicked');
          },
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              debugPrint('Shopping cart button is clicked');
            },
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('Search button is clicked');
            },
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
