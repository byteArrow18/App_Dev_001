// ignore_for_file: file_names

import 'package:app_dev_001/summary/presentation/summary.dart';
import 'package:app_dev_001/task/presentation/task.dart';
import 'package:flutter/material.dart';

class ShellPage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const ShellPage({super.key, required this.screenWidth, required this.screenHeight});
  // const ShellPage({super.key});
  @override
  State<ShellPage> createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  int myIndex = 2;
  List<Widget> widgetList = const [
    Text('Home'),
    TaskPage(),
    // Text('Task'),
    HomePage(),
    Text('Date'),
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
          padding: EdgeInsets.zero,
          // alignment: Alignment.bottomCenter,
          height: widget.screenHeight * 0.065,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(30, 219, 17, 17),
                width: 2,
              ),
            )
          ),
          child: BottomNavigationBar(
            // selectedItemColor: Colors.red,
            // selectedItemColor: Color.fromARGB(255, 2, 176, 89),
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            // backgroundColor: Colors.amberAccent,
            // showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              // BottomNavigationBarItem(icon: SizedBox(width: 24, height: 24, child: Icon(Icons.menu), ), label: '',),
              BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu',),
              BottomNavigationBarItem(icon: Icon(Icons.task),label: 'Task',),
              BottomNavigationBarItem(icon: Icon(Icons.query_stats_outlined),label: 'Summary',),
              BottomNavigationBarItem(icon: Icon(Icons.date_range_rounded),label: 'Date',),
              BottomNavigationBarItem(icon: Icon(Icons.folder),label: 'Files',),
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