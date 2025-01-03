import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('You have logged out!'),
      ),
    );
  }
}
