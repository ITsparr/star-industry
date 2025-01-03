import 'package:flutter/material.dart';

class SecureMyAccountPage extends StatelessWidget {
  const SecureMyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secure My Account'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child:
            Text('You have been logged out from all devices except this one.'),
      ),
    );
  }
}
