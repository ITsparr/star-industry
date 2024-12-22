import 'package:flutter/material.dart';

class MyCompanyPageContent extends StatelessWidget {
  const MyCompanyPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Map<String, String>>>(
        // Replace with your API call to fetch company data
        future: fetchCompanyData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show loading indicator while waiting for data
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Handle error
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Handle empty data
            return const Center(child: Text('No companies found.'));
          } else {
            // Build ListView from API data
            final companies = snapshot.data!;

            return ListView.builder(
              itemCount: companies.length * 2 - 1, // Adjusted for dividers
              itemBuilder: (context, index) {
                if (index.isOdd) {
                  // This is a divider position
                  return const Divider(
                    color: Colors.black, // Divider color
                    height: 1, // Divider thickness
                    indent: 16.0, // Indentation
                    endIndent: 16.0, // End indentation
                  );
                }

                // Calculate the company index by dividing by 2 (for odd indexes, return divider)
                final companyIndex = index ~/ 2;
                final company = companies[companyIndex];

                return ListTile(
                  contentPadding: const EdgeInsets.all(12.0),
                  title: Text(
                    company['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(company['description']!),
                      const SizedBox(height: 8.0),
                      Text(
                        'Contact: ${company['contact']}',
                        style: TextStyle(color: Colors.blue[700], fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.contact_mail),
                    onPressed: () {
                      // Handle contact action (e.g., open email)
                      print('Contacting ${company['name']}');
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  // Example function to simulate fetching data from an API
  Future<List<Map<String, String>>> fetchCompanyData() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    // Return example company data (replace with your API call)
    return [
      {
        'name': 'Tech Innovators',
        'description': 'A leading company in AI and Robotics.',
        'contact': 'contact@techinnovators.com'
      },
      {
        'name': 'Green Solutions',
        'description': 'Pioneering sustainable energy solutions.',
        'contact': 'support@greensolutions.com'
      },
      {
        'name': 'Digital Horizons',
        'description': 'Experts in web development and cloud services.',
        'contact': 'info@digitalhorizons.com'
      },
      {
        'name': 'HealthTech Labs',
        'description': 'Innovating healthcare with technology.',
        'contact': 'contact@healthtechlabs.com'
      },
    ];
  }
}
