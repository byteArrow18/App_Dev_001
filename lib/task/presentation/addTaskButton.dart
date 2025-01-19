import 'package:flutter/material.dart';

class addTaskButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const addTaskButton({
    super.key,
    required this.screenWidth, 
    required this.screenHeight
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
          height: 160,
          // color: Color.fromARGB(255, 238, 241, 239),
          color: const Color.fromARGB(255, 237, 227, 255),
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  width: 350,
                  // height: 70,
                  color: const Color.fromARGB(255, 147, 85, 255),
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
                  // backgroundColor: Color.fromARGB(255, 178, 221, 192),
                  // backgroundColor: Color.fromARGB(255, 185, 144, 255),
                  backgroundColor: const Color.fromARGB(255, 147, 85, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Icon(
                    Icons.send_outlined,
                    // color: Color.fromARGB(255, 19, 106, 48),
                    color: Color.fromARGB(255, 237, 227, 255),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}