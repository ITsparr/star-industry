import 'package:flutter/material.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/profile/profile_element/bug_report_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/profile/profile_element/help_center_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/profile/profile_element/live_chat_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/profile/profile_element/rate_app_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: ListView(
        children: [
          // Help Center
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help Center'),
            subtitle: const Text('Get assistance with your queries'),
            onTap: () {
              // Navigate to Help Center
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpCenterPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Live Chat
          ListTile(
            leading: const Icon(Icons.chat_bubble_outline),
            title: const Text('Live Chat'),
            subtitle: const Text('Chat with our support team'),
            onTap: () {
              // Navigate to Live Chat
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LiveChatPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Bug Report
          ListTile(
            leading: const Icon(Icons.bug_report),
            title: const Text('Bug Report'),
            subtitle: const Text('Reward per bug report'),
            onTap: () {
              // Navigate to Bug Report
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BugReportPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Rate the App
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: const Text('Rate the App'),
            subtitle: const Text('Please rate us on Google Play'),
            onTap: () {
              // Navigate to Rate the App Page or open Google Play
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RateAppPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
