// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:app_dev_001/task/presentation/task.dart';

class BottomBarIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const BottomBarIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          iconSize: 30,
          onPressed:  
            () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => TaskPage()),
            );
          },
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}
