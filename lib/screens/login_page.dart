import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // Makes the page scrollable if content overflows
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company name at the top for branding (without star icon)
            const Center(
              child: Column(
                children: [
                  SizedBox(height: 50), // Adds space at the top
                  Text(
                    'Star Technology', // Company name displayed here
                    style: TextStyle(
                      fontSize: 32, // Larger text size
                      fontWeight: FontWeight.w600, // Semi-bold font weight
                      fontStyle:
                          FontStyle.italic, // Slanted (italic) font style
                      letterSpacing: 1.5, // Adds spacing between letters
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 70), // Adds space after the name
                ],
              ),
            ),

            // Title text for the login page
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Please log in to your account',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 15),

            // Email text field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),

            // Password text field
            const TextField(
              obscureText: true, // Hides the text for password
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20),

            // Login button
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize:
                    const Size(double.infinity, 50), // Full-width button
              ),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 5),

            // Sign up navigation button
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigate to the sign-up page
                },
                child: const Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
