import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of widgets for each page
  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('My Network', style: TextStyle(fontSize: 24))),
    const Center(child: Text('My Company', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Star Technology',
          style: TextStyle(
            fontSize: 20, // Larger text size
            fontWeight: FontWeight.w600, // Semi-bold font weight
            fontStyle: FontStyle.italic, // Slanted (italic) font style
            letterSpacing: 1.5, // Adds spacing between letters
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(CupertinoIcons.bars),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'johndoe@example.com',
                style: TextStyle(fontSize: 14),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  CupertinoIcons.person_fill,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
            ),
            // Drawer Items
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(CupertinoIcons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(CupertinoIcons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(), // Adds a separator
                  ListTile(
                    leading: const Icon(CupertinoIcons.info_circle),
                    title: const Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(CupertinoIcons.square_arrow_right),
                    title: const Text('Logout'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'My Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.building_2_fill),
            label: 'My Company',
          ),
        ],
      ),
    );
  }
}
