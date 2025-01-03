import 'package:flutter/material.dart';

class RateAppPage extends StatelessWidget {
  const RateAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate the App'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Please rate us on Google Play.'),
      ),
    );
  }
}
