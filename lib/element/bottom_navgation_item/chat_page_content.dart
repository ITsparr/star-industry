import 'package:flutter/material.dart';

class ChatPageContent extends StatelessWidget {
  const ChatPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulated online/offline statuses
    final List<bool> onlineStatuses = [
      true,
      false,
      true,
      true,
      false,
      false,
      true,
      true,
      false,
      true
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6600), // UC Orange
        elevation: 4.0,
        title: const Text(
          'Sparrow',
          style: TextStyle(
            fontFamily: 'Caramel', // Custom font
            fontSize: 50, // Font size
            color: Colors.white, // Font color
          ),
        ),
        centerTitle: true, // Center title alignment
      ),
      body: ListView.builder(
        itemCount: onlineStatuses.length, // Number of friends
        itemBuilder: (context, index) {
          return ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Placeholder profile image
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor:
                        onlineStatuses[index] ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            title: Text(
              'Friend ${index + 1}', // Placeholder friend name
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              onlineStatuses[index] ? 'Online' : 'Offline', // Status text
              style: TextStyle(
                color: onlineStatuses[index] ? Colors.green : Colors.red,
              ),
            ),
            trailing: Text(
              '10:${index}0 AM', // Placeholder time
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            onTap: () {
              // Action for tapping on a friend (e.g., navigate to chat)
              print('Tapped on Friend ${index + 1}');
            },
          );
        },
      ),
    );
  }
}
