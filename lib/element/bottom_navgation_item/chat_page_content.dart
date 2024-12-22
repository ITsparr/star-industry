import 'package:flutter/material.dart';

class ChatPageContent extends StatelessWidget {
  const ChatPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Placeholder for 10 items
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150', // Placeholder profile image
            ),
          ),
          title: Text(
            'Friend ${index + 1}', // Placeholder friend name
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Last message from Friend ${index + 1}', // Placeholder last message
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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
    );
  }
}
