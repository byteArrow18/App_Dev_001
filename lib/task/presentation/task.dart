// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields

import 'package:app_dev_001/common/bottomNavBar.dart';
import 'package:flutter/material.dart';


class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  _TaskePageState createState() => _TaskePageState();
}

class _TaskePageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}
