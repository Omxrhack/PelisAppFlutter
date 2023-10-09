import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // hides leading widget
      toolbarHeight: 100,
      title: const Row(
        children: [
          Text(
            'MoviesApp',
          ),
          Text(
            '.',
            style: TextStyle(color: Colors.red),
            textScaleFactor: 2,
          ),
        ],
      ),
    );
  }
}
