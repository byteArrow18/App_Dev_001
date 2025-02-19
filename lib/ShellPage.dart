// ignore_for_file: file_names

import 'package:app_dev_001/files/presentation/files.dart';
import 'package:app_dev_001/summary/presentation/summary.dart';
import 'package:app_dev_001/task/presentation/task.dart';
import 'package:flutter/material.dart';

class ShellPage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const ShellPage({
    super.key, 
    required this.screenWidth, 
    required this.screenHeight
  });
  // const ShellPage({super.key});
  @override
  State<ShellPage> createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  int myIndex = 1;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      Text('Menu'),
      TaskPage(screenWidth: widget.screenWidth, screenHeight: widget.screenHeight,),
      // Text('Task'),
      HomePage(screenHeight: widget.screenHeight, screenWidth: widget.screenWidth),
      // Text('Home')
      Text('Date'),
      Files(),
      // Text('Files'),
    ];
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
          height: widget.screenHeight * 0.09,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(30, 219, 17, 17),
                width: 2,
              ),
            )
          ),
          child: BottomNavigationBar(
            // selectedItemColor: Color.fromARGB(255, 2, 176, 89),
            selectedItemColor: const Color.fromARGB(255, 147, 85, 255),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            // iconSize: widget.screenHeight * widget.screenWidth * 0.000023,
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