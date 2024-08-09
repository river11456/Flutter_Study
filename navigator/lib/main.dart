import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Navigator', home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('First page')),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to the Second Page'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SecondPage()));
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second page')),
        body: Center(
          child: ElevatedButton(
            child: const Text('Go to the First Page'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
