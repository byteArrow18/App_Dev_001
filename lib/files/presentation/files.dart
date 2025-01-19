// ignore_for_file: file_names, avoid_print
import 'package:flutter/material.dart';

class Files extends StatelessWidget {
  const Files({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container 1 with the first color
        Container(
          color: const Color.fromARGB(255, 147, 85, 255),
          height: 100,  // You can adjust the height as needed
          width: double.infinity, // Full width
        ),
        
        // Container 2 with the second color
        Container(
          color: const Color.fromARGB(255, 116, 36, 255),
          height: 100,
          width: double.infinity,
        ),
        
        // Container 3 with the third color
        Container(
          color: const Color.fromARGB(255, 237, 227, 255),
          height: 100,
          width: double.infinity,
        ),
        
        // Container 4 with the fourth color
        Container(
          color: const Color.fromARGB(255, 185, 144, 255),
          height: 100,
          width: double.infinity,
        ),
      ],
    );
  }
}
