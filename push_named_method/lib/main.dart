import 'package:flutter/material.dart';
import 'package:push_named_method/ScreenA.dart';
import 'package:push_named_method/ScreenB.dart';
import 'package:push_named_method/ScreenC.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenA(),
        '/b': (context) => const ScreenB(),
        '/c': (context) => const ScreenC(),
      },
    );
  }
}
