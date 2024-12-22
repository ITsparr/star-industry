import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import the lottie package

class ChatPageContent extends StatelessWidget {
  const ChatPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
          'assets/images/animation_files/Loading.json'), // Load the Lottie animation from the specified path
    );
  }
}
