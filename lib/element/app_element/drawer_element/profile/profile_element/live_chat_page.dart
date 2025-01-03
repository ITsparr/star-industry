import 'package:flutter/material.dart';

class LiveChatPage extends StatelessWidget {
  const LiveChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Chat'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: const Center(
        child: Text('Chat with our support team here.'),
      ),
    );
  }
}
