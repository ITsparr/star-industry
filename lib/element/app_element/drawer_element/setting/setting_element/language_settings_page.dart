import 'package:flutter/material.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Settings'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Select Language'),
      ),
    );
  }
}
