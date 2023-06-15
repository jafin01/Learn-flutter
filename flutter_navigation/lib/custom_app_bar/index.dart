import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple,
      title: const ListTile(
        leading: Icon(Icons.menu_rounded),
        iconColor: Colors.white,
        title: Center(
          child: Text(
            'Flutter Navigation',
            maxLines: 1,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        trailing: Icon(Icons.search_rounded),
      ),
    );
  }
}
