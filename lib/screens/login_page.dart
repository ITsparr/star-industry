import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF6600), // UC-inspired Orange Background
      body: SingleChildScrollView(
        // Makes the page scrollable if content overflows
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company name at the top for branding
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
                      color: Colors.white, // White color for text
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
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Please log in to your account',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 15),

            // Email text field
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email, color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),

            // Password text field
            const TextField(
              obscureText: true, // Hides the text for password
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            // Login button
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor:
                    const Color(0xFFFF6600), // UC Orange text color
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
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
