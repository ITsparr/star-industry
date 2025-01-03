import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/element/app_element/drawer/custom_drawer.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/chat_page_content.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/home_page_content.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/my_company_page_content.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/my_network_page_content.dart';
import 'package:flutter_application_1/element/bottom_navgation_item/make_video_page_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of widgets for each page
  final List<Widget> _pages = [
    const HomePageContent(),
    const MyNetworkPageContent(),
    const MakeVideoPageContent(),
    const MyCompanyPageContent(),
    const ChatPageContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Conditional AppBar: Only show AppBar when on Home (index 0)
      appBar: _currentIndex == 0
          ? AppBar(
              backgroundColor: const Color(0xFFFF6600), // UC Orange
              elevation: 4.0,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(CupertinoIcons.bars,
                      color: Colors.white), // Set icon color to white
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              title: const Text(
                'Sparrow',
                style: TextStyle(
                  fontFamily: 'Roboto', // Custom font
                  fontSize: 50, // Font size
                  color: Colors.white, // Font color
                ),
              ),
            )
          : null, // If not on Home, set AppBar to null (hide it)

      drawer: const CustomDrawer(),

      // Body displays the content of the selected page
      body: SafeArea(
        child: _pages[_currentIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFFFF6600), // UC Orange
        unselectedItemColor: const Color(0xFFBFBFBF), // UC Gray
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.money_dollar),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.video_camera),
            label: 'Make Video', // New item
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.building_2_fill),
            label: 'Company',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
