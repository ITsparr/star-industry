import 'package:flutter/material.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/change_password_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/delete_account_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/language_settings_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/notification_settings_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/secure_my_account_page.dart';
import 'package:flutter_application_1/element/app_element/drawer_element/setting/setting_element/security_layers_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFFFF6600),
      ),
      body: ListView(
        children: [
          // Language Settings
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            subtitle: const Text('Change app language'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LanguageSettingsPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Notification Settings
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            subtitle: const Text('Manage notification preferences'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationSettingsPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Change Password
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            subtitle: const Text('Update your password'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChangePasswordPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Delete Account
          ListTile(
            leading: const Icon(Icons.delete_forever),
            title: const Text('Delete Account'),
            subtitle: const Text('Permanently delete your account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeleteAccountPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Security Layers
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Security Layers'),
            subtitle: const Text('Manage app security options'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecurityLayersPage(),
                ),
              );
            },
          ),
          const Divider(),

          // Secure My Account
          ListTile(
            leading: const Icon(
              Icons.exit_to_app, // Door icon
              color: Colors.red, // Red color for the icon
            ),
            title: const Text('Secure My Account'),
            subtitle: const Text('Log out from all devices except this one'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecureMyAccountPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
