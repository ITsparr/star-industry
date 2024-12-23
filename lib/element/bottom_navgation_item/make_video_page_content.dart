import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MakeVideoPageContent extends StatelessWidget {
  const MakeVideoPageContent({super.key});

  Future<void> _pickVideoFromGallery(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);

    if (video != null) {
      // Handle the selected video file
      print('Picked video: ${video.path}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected video: ${video.name}')),
      );
    } else {
      // User canceled the picker
      print('No video selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Video'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFF6600), // UC Orange
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _pickVideoFromGallery(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF6600),
          ),
          child: const Text('Open Gallery'),
        ),
      ),
    );
  }
}
