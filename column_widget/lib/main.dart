import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Column widget', home: ColumnWidgetStudy());
  }
}

class ColumnWidgetStudy extends StatelessWidget {
  const ColumnWidgetStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text('Container 3'),
              ),
            ],
          ),
        ));
  }
}
