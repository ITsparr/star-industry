import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // User Info Box at the Top
          Container(
            padding: const EdgeInsets.all(16.0), // Padding inside the box
            margin: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 10.0), // Margin around the box
            decoration: BoxDecoration(
              color: Colors.white, // Box background color
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Subtle shadow color
                  blurRadius: 10, // Blur effect
                  offset: const Offset(0, 5), // Position of shadow
                ),
              ],
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://via.placeholder.com/150', // Placeholder profile picture
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe', // User name
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Account No: 1234567890', // Account number or info
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Balance: \$12,345.67',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Savings: \$5,000.00',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Money, Shares, Funding Section
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                // Money Section
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 5,
                  child: ListTile(
                    leading: const Icon(Icons.account_balance_wallet),
                    title: const Text('Your Money'),
                    subtitle: const Text('Manage your account balance'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                ),

                // Shares Section
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 5,
                  child: ListTile(
                    leading: const Icon(Icons.show_chart),
                    title: const Text('Shares'),
                    subtitle: const Text('View and manage your stocks'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                ),

                // Funding Section
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 5,
                  child: ListTile(
                    leading: const Icon(Icons.attach_money),
                    title: const Text('Funding'),
                    subtitle: const Text('Add funds to your account'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
