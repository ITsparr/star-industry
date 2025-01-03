import 'package:flutter/material.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/chat_page_content.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'starting_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
