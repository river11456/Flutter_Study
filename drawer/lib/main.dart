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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/BANTTO1.jpg'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/BANTTO2.jpg'),
                )
              ],
              accountName: const Text('BBANTO'),
              accountEmail: const Text('river114@naver.com'),
              onDetailsPressed: () {
                debugPrint('arrow is clicked');
              },
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                debugPrint('Home is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                debugPrint('Setting is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
              ),
              title: const Text('Q&A'),
              onTap: () {
                debugPrint('Q&A is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
