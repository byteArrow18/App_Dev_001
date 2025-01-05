// ignore_for_file: sized_box_for_whitespace

import 'package:app_dev_001/summary/presentation/countTaskBlock.dart';
import 'package:app_dev_001/summary/presentation/timeblock.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectBuildTimeBlock = 0;
  bool isLoggedIn = false;
  int completedTask = 1;
  int pendingTask = 2;

//==========================================================================
  // @override
  // void initState() {
  //   super.initState();
  //   // Fetch data when the app starts
  //   _fetchDataFromBackend();
  // }
//==========================================================================


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.amber,
                      height: 160,
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Name of individual will come here",),
                              isLoggedIn
                                ? InkWell(onTap: _signOut, child: Text("Sign Out"))
                                : InkWell(onTap: _login, child: Text("Login")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // Row with Day, Week, Month buttons
              Align(
                alignment: Alignment(-0.95, 0),
                child: Text(
                  "Task Overview",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TimeBlockWidget(label:"Day", color: Color.fromARGB(255, 238, 241, 239), index: 0, selectBuildTimeBlock: selectBuildTimeBlock, selectTimeBuild: (value) {
                    setState(() {
                      selectBuildTimeBlock = value;
                    });
                   },),
                   TimeBlockWidget(label:"Week", color: Color.fromARGB(255, 238, 241, 239), index: 1, selectBuildTimeBlock: selectBuildTimeBlock, selectTimeBuild: (value) {
                    setState(() {
                      selectBuildTimeBlock = value;
                    });
                   },),
                   TimeBlockWidget(label:"Month", color: Color.fromARGB(255, 238, 241, 239), index: 2, selectBuildTimeBlock: selectBuildTimeBlock, selectTimeBuild: (value) {
                    setState(() {
                      selectBuildTimeBlock = value;
                    });
                   },),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CountTaskBlock(label: "Completed Task", color: Color.fromARGB(255, 238, 241, 239), taskCount: completedTask),
                  CountTaskBlock(label: "Pending Task", color: Color.fromARGB(255, 238, 241, 239), taskCount: pendingTask),
                ],
              ),
              SizedBox(height: 10),
              // Graph Container below the buttons
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 238, 241, 239),
                  // color: Color.fromARGB(255, 217, 237, 227),
                ),
                child: Center(
                  child: Text(
                    "Graph goes here",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Login action (Placeholder)
  void _login() {
    setState(() {
      isLoggedIn = true;  // Simulate login
    });
    // ignore: avoid_print
    print("User logged in");
  }

  // Sign-out action (Placeholder)
  void _signOut() {
    setState(() {
      isLoggedIn = false;  // Simulate sign out
    });
    // ignore: avoid_print
    print("User signed out");
  }
}




























// Function to fetch data from the backend (Rust API)
// Future<void> _fetchDataFromBackend() async {
//   try {
//     final response = await http.get(Uri.parse('http://127.0.0.1:8080/tasks')); // URL of your Rust API
//       if (response.statusCode == 200) {
//         // Parse the JSON data from the response
//         final data = jsonDecode(response.body);

//         setState(() {
//           completedTask = data['completed_task'];  // Set completed task count dynamically
//           pendingTask = data['pending_task'];      // Set pending task count dynamically
//         });
//         print("Fetched data: Completed Tasks - $completedTask, Pending Tasks - $pendingTask");
//       } else {
//         throw Exception('Failed to load task data');
//       }
//     } catch (e) {
//       print("Error fetching data: $e");
//     }
//   }
// }