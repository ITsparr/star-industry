import 'package:flutter/material.dart';

class MyNetworkPageContent extends StatelessWidget {
  const MyNetworkPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search...', // Placeholder text
                  prefixIcon:
                      Icon(Icons.search, color: Colors.black), // Search icon
                  border: InputBorder.none, // Remove border
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0), // Padding inside the text field
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
