import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Help Center Content'),
      ),
    );
  }
}
