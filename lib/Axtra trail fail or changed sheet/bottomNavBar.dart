// ignore_for_file: file_names, avoid_print
import 'package:flutter/material.dart';
import 'package:app_dev_001/Axtra%20trail%20fail%20or%20changed%20sheet/bottomBarIcon.dart';

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
        padding: EdgeInsets.zero,
        color: Colors.lime,
        height: 70,
        child: Container(

          //testing decoration box remove------------------------
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(255, 248, 16, 16),
                width: 2,
              ),
              bottom: BorderSide(
                color: const Color.fromARGB(255, 248, 16, 16),
                width: 2,
              ),
              right: BorderSide(
                color: const Color.fromARGB(255, 248, 16, 16),
                width: 2,
              ),
              left: BorderSide(
                color: const Color.fromARGB(255, 248, 16, 16),
                width: 2,
              ),
            ),
          ),
          //testing decoration box remove------------------------

          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BottomBarIcon(icon: Icons.home, label: 'Home', onPressed: () {
                print("Home Tapped");
              }),
              BottomBarIcon(icon: Icons.notifications, label: 'Notification', onPressed: () {
                print("Notification Tapped");
              }),
              BottomBarIcon(icon: Icons.task, label: 'Task', onPressed: () {
                print("Task Tapped");
              }),
              BottomBarIcon(icon: Icons.date_range_rounded, label: 'Date', onPressed: () {
                print("Date Tapped");
              }),
              BottomBarIcon(icon: Icons.settings, label: 'Settings', onPressed: () {
                print("Settings Tapped");
              }),
              
              // IconButton(
              //   icon: Icon(Icons.settings),
              //   iconSize: 30,
              //   onPressed: () {
              //     // ignore: avoid_print
              //     print("Settings tapped");
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}