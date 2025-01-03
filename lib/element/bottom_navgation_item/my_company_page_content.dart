import 'package:flutter/material.dart';

class MyCompanyPageContent extends StatelessWidget {
  const MyCompanyPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> ytChannels = [
      {
        'name': 'Tech Explained',
        'description': 'Dive deep into tech tutorials and reviews.',
        'url': 'https://youtube.com/tech-explained',
      },
      {
        'name': 'Flutter Devs',
        'description': 'All about Flutter and Dart development.',
        'url': 'https://youtube.com/flutter-devs',
      },
      {
        'name': 'Code Academy',
        'description': 'Learn to code step by step.',
        'url': 'https://youtube.com/code-academy',
      },
      // Add more channels as needed
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 229, 103, 30), // Custom color
          elevation: 4.0,
          title: const Text(
            'Soler',
            style: TextStyle(
              fontFamily: 'Roboto', // Default font
              fontSize: 24, // Font size
              color: Colors.white, // Font color
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: ytChannels.length,
          itemBuilder: (context, index) {
            final channel = ytChannels[index];

            return Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                title: Text(
                  channel['name'] ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(channel['description'] ?? ''),
                    const SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {
                        print('Opening: ${channel['url']}');
                        // You can use `url_launcher` to open the URL
                      },
                      child: Text(
                        channel['url'] ?? '',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () {
                    print('Opening ${channel['name']}');
                    // Add your action for opening the channel
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
