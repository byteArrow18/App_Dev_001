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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        // backgroundColor: Colors.amber,
        toolbarHeight: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text("image and account name comes here"),
                    color: Colors.amber,
                    height: 70,
                    alignment: Alignment(0, 0),
                  ),
                )
              ],
            ),
            // Row with Day, Week, Month buttons
            Text("Task Overview", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.2,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeBlock("Day", Color.fromARGB(255, 217, 237, 227)),
                _buildTimeBlock("Week", Color.fromARGB(255, 217, 237, 227)),
                _buildTimeBlock("Month", Color.fromARGB(255, 217, 237, 227)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _countTaskBlock("Completed Task", Color.fromARGB(255, 217, 237, 227)),
                _countTaskBlock("Completed Task", Color.fromARGB(255, 217, 237, 227)),
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
    );
  }

  // Method to build each time block (Day, Week, Month)
  Widget _buildTimeBlock(String label, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Handle button press (you can add your logic here later)
          print('$label clicked');
        },
        child: Container(
          margin: EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
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
  
  Widget _countTaskBlock(String label, Color color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Align(
          alignment: Alignment(0, 0.8),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      );
  }
}
