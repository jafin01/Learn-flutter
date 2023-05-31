import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80'),
            ),
            title: Text('Person ${index + 1}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            subtitle: const Text(
              'Hey, I\'m using Flutter!',
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              '${index + 1}:10 pm',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              // ignore: avoid_print
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider(
            thickness: 1,
            // startIndent: 72,
            indent: 80,
          );
        },
        itemCount: 24);
  }
}
