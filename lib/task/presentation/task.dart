// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields

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
        backgroundColor: const Color.fromARGB(255, 255, 225, 135),
        body: Padding(
          padding: EdgeInsets.all(20),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Container(
              height: 500,
              color: Colors.purple,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Add Task',
                      ),
                    ],
                  ),
                  Divider(thickness: 1.2),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 440,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter task',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      FloatingActionButton(onPressed: () => print('pressed'))
                    ],
                  ),
                ],
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
