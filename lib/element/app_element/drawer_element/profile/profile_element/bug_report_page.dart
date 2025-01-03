import 'package:flutter/material.dart';

class BugReportPage extends StatelessWidget {
  const BugReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bug Report'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Report a bug and get rewarded!'),
      ),
    );
  }
}
