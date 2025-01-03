import 'package:flutter/material.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Account'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Are you sure you want to delete your account?'),
      ),
    );
  }
}
