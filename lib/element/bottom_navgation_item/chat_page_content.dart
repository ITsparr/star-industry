import 'package:flutter/material.dart';

class ChatPageContent extends StatefulWidget {
  const ChatPageContent({super.key});

  @override
  State<ChatPageContent> createState() => _ChatPageContentState();
}

class _ChatPageContentState extends State<ChatPageContent> {
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

  final List<String> friendNames = [
    'Google',
    'Apple',
    'Microsoft',
    'Amazon',
    'Facebook',
    'Tesla',
    'Samsung',
    'Intel',
    'Adobe',
    'Netflix',
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    // Filtered list based on search query
    final filteredFriends = friendNames
        .asMap()
        .entries
        .where((entry) =>
            entry.value.toLowerCase().contains(searchQuery.toLowerCase()))
        .map((entry) => entry.key)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4.0,
        title: const Text(
          'Sparrow',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 50,
            color: Color.fromRGBO(37, 211, 102, 1.0),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search friends...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredFriends.length,
              itemBuilder: (context, index) {
                final friendIndex = filteredFriends[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0), // Add vertical spacing
                  child: ListTile(
                    leading: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            'https://via.placeholder.com/150',
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: onlineStatuses[friendIndex]
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      friendNames[friendIndex],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '10:${friendIndex}0 AM',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    onTap: () {
                      print('Tapped on ${friendNames[friendIndex]}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
