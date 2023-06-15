import 'package:flutter/material.dart';
import 'package:flutter_sample_02/home_screen.dart/index.dart';
import 'package:flutter_sample_02/user_detail/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        title: 'Flutter Lists',
        home: const HomeScreen(),
        routes: {
          "/user": (context) => const UserDetail(),
        });
  }
}
