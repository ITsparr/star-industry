import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileLoadingSkeleton extends StatelessWidget {
  const ProfileLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Profile...'),
        backgroundColor: Colors.blue,
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture Placeholder
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(height: 20),

              // Name Placeholder
              Container(
                width: 150,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(height: 10),

              // Username Placeholder
              Container(
                width: 100,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 30),

              // Bio Placeholder
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 30),

              // Recent Posts Placeholder
              Container(
                width: 200,
                height: 24,
                color: Colors.white,
              ),
              const SizedBox(height: 10),

              // Post Placeholder 1
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 20),

              // Post Placeholder 2
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 16,
                color: Colors.white,
              ),
              // Add more placeholders as needed
            ],
          ),
        ),
      ),
    );
  }
}
