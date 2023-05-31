import 'package:flutter/material.dart';
import 'package:flutter_sample_02/user_list/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Lists'),
        ),
        body: const UserList());
  }
}
