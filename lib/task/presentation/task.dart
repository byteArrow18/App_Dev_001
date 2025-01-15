// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields

import 'dart:ui';

import 'package:flutter/material.dart';


class TaskPage extends StatefulWidget {
  const TaskPage({
    super.key
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
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () => showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), // Rounded top-left corner
                topRight: Radius.circular(20), // Rounded top-right corner
              ),
            ),
            clipBehavior: Clip.hardEdge,
            builder: (BuildContext context) => Container(
              height: 150,
              color: Color.fromARGB(255, 238, 241, 239),
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 350,
                      height: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter task',
                          // contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      onPressed: () => print('pressed'),
                      elevation: 0,
                      backgroundColor: Color.fromARGB(255, 178, 221, 192),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: Icon(
                        Icons.send_outlined,
                        color: Color.fromARGB(255, 19, 106, 48),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
        ),
      ),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}
