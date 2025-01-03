import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectBuildTimeBlock = 0;  //Set Day to 0 initially
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.lime,
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Menu Option 1
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print("Home tapped");
                },
              ),
              // Menu Option 2
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  print("Notifications tapped");
                },
              ),
              // Menu Option 3
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print("Settings tapped");
                },
              ),
            ],
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
    print("User logged in");
  }

  // Sign-out action (Placeholder)
  void _signOut() {
    setState(() {
      isLoggedIn = false;  // Simulate sign out
    });
    print("User signed out");
  }

  // Method to build each time block (Day, Week, Month)
  Widget _buildTimeBlock(String label, Color color, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectBuildTimeBlock = index;
          });
          // Handle button press (you can add your logic here later)
          // ignore: avoid_print
          print('$label clicked');
        },
        child: Container(
          margin: EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            color: _selectBuildTimeBlock == index ? const Color.fromARGB(255, 20, 244, 136) : color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _selectBuildTimeBlock == index ? const Color.fromARGB(255, 62, 236, 152) : Colors.transparent,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: _selectBuildTimeBlock == index ? const Color.fromARGB(255, 52, 163, 110) : Colors.black12,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
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
              taskCount.toString(), // Display static value (this will change dynamically later)
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