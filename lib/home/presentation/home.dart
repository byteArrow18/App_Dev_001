import 'package:app_dev_001/home/presentation/timeblock.dart';
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
  // int completedTask = fetchedData.completedTaskCount;  // Replace this with your API response
  // int pendingTask = fetchedData.pendingTaskCount;      // Replace this with your API response

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
    return Scaffold(
      // appBar: AppBar(
        // title: Text("Dashboard"),
        // centerTitle: true,
        // backgroundColor: Colors.amber,
        // toolbarHeight: 30,
      // ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black26,
              width: 1,
            ),
          ),
        ),
        child: BottomAppBar(
          color: Colors.lime,
          height: 70,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu Option 1
                IconButton(
                  icon: Icon(Icons.home),
                  iconSize: 30,
                  onPressed: () {
                    // ignore: avoid_print
                    print("Home tapped");
                  },
                ),
                // Menu Option 2
                IconButton(
                  icon: Icon(Icons.notifications),
                  iconSize: 30,
                  onPressed: () {
                    // ignore: avoid_print
                    print("Notifications tapped");
                  },
                ),
                // Menu Option 3
                IconButton(
                  icon: Icon(Icons.task),
                  iconSize: 30,
                  onPressed: () {
                    // ignore: avoid_print
                    print("Task tapped");
                  },
                ),
                // Menu Option 4
                IconButton(
                  icon: Icon(Icons.date_range_rounded),
                  iconSize: 30,
                  onPressed: () {
                    // ignore: avoid_print
                    print("Date tapped");
                  },
                ),
                // Menu Option 5
                IconButton(
                  icon: Icon(Icons.settings),
                  iconSize: 30,
                  onPressed: () {
                    // ignore: avoid_print
                    print("Settings tapped");
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
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
                        // mainAxisAlignment: MainAxisAlignment.center,
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
                              // SizedBox(height: 50,),
                              Text("    Name of individual will come here",),
                              //login and signout button condition
                              isLoggedIn
                                ? TextButton(onPressed: _signOut, child: Text("Sign Out"))
                                : TextButton(onPressed: _login, child: Text("Login")),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTimeBlock("Day", Color.fromARGB(255, 217, 237, 227), 0),
                  _buildTimeBlock("Week", Color.fromARGB(255, 217, 237, 227), 1),
                  _buildTimeBlock("Month", Color.fromARGB(255, 217, 237, 227), 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _countTaskBlock("Completed Task", Color.fromARGB(255, 217, 237, 227), completedTask),
                  _countTaskBlock("Pending Task", Color.fromARGB(255, 217, 237, 227), pendingTask),
                ],
              ),
              SizedBox(height: 20),
              // Graph Container below the buttons
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
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

  // Method to build each time block (Day, Week, Month)
  Widget _buildTimeBlock(String label, Color color, int index) {
    return TimeBlockWidget(index: index, label: label, color: color, selectBuildTimeBlock: selectBuildTimeBlock, selectTimeBuild: (value) { setState(() {
      selectBuildTimeBlock = value;
    }); },);
  }

  Widget _countTaskBlock(String label, Color color, int taskCount) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Static Number Display
            Text(
              taskCount.toString(), // display static value (change dynamically later)
              style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10), // Space between number and label
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            )
          ]
        ),
      ),
      );
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