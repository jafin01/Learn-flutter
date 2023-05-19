import 'package:flutter/material.dart';

main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My first app',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      backgroundColor: Colors.blue[100],
    );
  }
}
