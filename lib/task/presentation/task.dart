// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields

import 'package:app_dev_001/task/presentation/addTaskButton.dart';
import 'package:flutter/material.dart';


class TaskPage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const TaskPage({
    super.key,
    required this.screenWidth, 
    required this.screenHeight
  });

  @override
  _TaskePageState createState() => _TaskePageState();
}

class _TaskePageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.deepOrangeAccent,
          backgroundColor: const Color.fromARGB(255, 147, 85, 255),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
        ),
        floatingActionButton: addTaskButton(screenWidth: widget.screenWidth, screenHeight: widget.screenHeight,),
      ),
    );
  }
}
