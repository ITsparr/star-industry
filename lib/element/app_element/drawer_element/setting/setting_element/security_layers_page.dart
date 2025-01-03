import 'package:flutter/material.dart';

class SecurityLayersPage extends StatelessWidget {
  const SecurityLayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security Layers'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Manage Security Options'),
      ),
    );
  }
}
