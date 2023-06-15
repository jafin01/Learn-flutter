import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_screen/index.dart';
import 'package:flutter_navigation/product/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter Demo',
      home: const HomeScreen(),
      routes: {
        "product_page": (context) => const Product(),
      },
    );
  }
}
