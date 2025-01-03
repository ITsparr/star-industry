import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/about/about_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/logout/logout_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/profile/profile_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/settings_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer Header
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFFF6600)),
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
                color: Color(0xFFFF6600),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(CupertinoIcons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                ),
                const Divider(), // Adds a separator
                ListTile(
                  leading: const Icon(CupertinoIcons.info_circle),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(CupertinoIcons.square_arrow_right),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogoutPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
