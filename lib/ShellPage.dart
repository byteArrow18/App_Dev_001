// ignore_for_file: file_names

import 'package:app_dev_001/home/presentation/home.dart';
import 'package:app_dev_001/task/presentation/task.dart';
import 'package:flutter/material.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  int myIndex = 1;
  List<Widget> widgetList = const [
    HomePage(),
    // Text('Home'),
    TaskPage(),
    // Text('Task'),
    Text('Date'),
    Text('Settings'),
    Text('Notifications'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        // title: Text("Dashboard"),
        // centerTitle: true,
        // backgroundColor: Colors.amber,
        // toolbarHeight: 30,
        // ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(2),
          alignment: Alignment.bottomCenter,
          height: 65,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(30, 190, 190, 190),
                width: 2,
              ),
            )
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            // showUnselectedLabels: true,
            // type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.task),label: 'Task',),
              BottomNavigationBarItem(icon: Icon(Icons.date_range_rounded),label: 'Date',),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',),
              BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notifications',),
            ]
          ),
        ),

        body: Center(
          child: widgetList[myIndex],
        ),
      ),
    );
  }
  
}