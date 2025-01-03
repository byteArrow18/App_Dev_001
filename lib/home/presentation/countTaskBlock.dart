import 'package:flutter/material.dart';

class countTaskBlock extends StatelessWidget {
  const countTaskBlock({
    super.key,
    required this.label,
    required this.color,
    required this.taskCount,
  });

  final String label;
  final Color color;
  final int taskCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Static Number Display
            Text(
              taskCount.toString(), // display static value (change dynamically later)
              style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10), // Space between number and label
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            )
          ]
        ),
      ),
      );
  }
}