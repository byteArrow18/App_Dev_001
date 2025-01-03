import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
      ),
      child: BottomAppBar(
        color: Colors.lime,
        height: 70,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu Option 1
              IconButton(
                icon: Icon(Icons.home),
                iconSize: 30,
                onPressed: () {
                  // ignore: avoid_print
                  print("Home tapped");
                },
              ),
              // Menu Option 2
              IconButton(
                icon: Icon(Icons.notifications),
                iconSize: 30,
                onPressed: () {
                  // ignore: avoid_print
                  print("Notifications tapped");
                },
              ),
              // Menu Option 3
              IconButton(
                icon: Icon(Icons.task),
                iconSize: 30,
                onPressed: () {
                  // ignore: avoid_print
                  print("Task tapped");
                },
              ),
              // Menu Option 4
              IconButton(
                icon: Icon(Icons.date_range_rounded),
                iconSize: 30,
                onPressed: () {
                  // ignore: avoid_print
                  print("Date tapped");
                },
              ),
              // Menu Option 5
              IconButton(
                icon: Icon(Icons.settings),
                iconSize: 30,
                onPressed: () {
                  // ignore: avoid_print
                  print("Settings tapped");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}