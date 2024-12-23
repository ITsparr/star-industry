import 'package:flutter/material.dart';

class MyCompanyPageContent extends StatelessWidget {
  const MyCompanyPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        ),
        body: ListView.builder(
          itemCount: 10 * 2 - 1, // Replace "10" with your actual data length
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

            // Calculate the company index by dividing by 2
            final companyIndex = index ~/ 2;

            return ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              title: Text(
                'Company Name $companyIndex', // Replace with your company name
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Company Description $companyIndex'), // Replace with your company description
                  const SizedBox(height: 8.0),
                  Text(
                    'Contact: contact@company$companyIndex.com', // Replace with your contact
                    style: TextStyle(color: Colors.blue[700], fontSize: 12),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.contact_mail),
                onPressed: () {
                  // Handle contact action (e.g., open email)
                  print(
                      'Contacting Company $companyIndex'); // Replace with your desired action
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
