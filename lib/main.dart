import 'package:flutter/material.dart';

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
  int completedTask = 1;
  int pendingTask = 2;
  // int completedTask = fetchedData.completedTaskCount;  // Replace this with your API response
  // int pendingTask = fetchedData.pendingTaskCount;      // Replace this with your API response


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        // title: Text("Dashboard"),
        // centerTitle: true,
        // backgroundColor: Colors.amber,
        // toolbarHeight: 30,
      // ),
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
                      color: Colors.amber,
                      height: 70,
                      alignment: Alignment(0, 0),
                      child: Text("image and account name comes here"),
                    ),
                  )
                ],
              ),
              // Row with Day, Week, Month buttons
              Text(
                "Task Overview",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.2,
                ),
              ),
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

  // Method to build each time block (Day, Week, Month)
  Widget _buildTimeBlock(String label, Color color, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectBuildTimeBlock = index;
          });
          // Handle button press (you can add your logic here later)
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
            // Label Text (e.g., "Completed Task")
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
