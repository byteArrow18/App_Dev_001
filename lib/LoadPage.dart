import 'package:flutter/material.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          // padding: EdgeInsets.all(5),
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
            // showUnselectedLabels: true,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'Task',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range_rounded, color: Colors.greenAccent,),
                label: 'Date',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.settings, color: Colors.amberAccent,),
              //   label: 'Settings',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.notification_add, color: Colors.amberAccent,),
              //   label: 'Notifications',
              // ),
            ]
          ),
        ),
      ),
    );
  }
  
}