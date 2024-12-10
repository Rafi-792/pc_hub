import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onCartPressed;
  final Function onSearchPressed;
  final Function onMenuPressed;

  CustomAppBar({
    required this.title,
    required this.onCartPressed,
    required this.onSearchPressed,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      elevation: 0,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        // Search Icon
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => onSearchPressed(),
        ),
        // Cart Icon
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () => onCartPressed(),
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => onMenuPressed(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


