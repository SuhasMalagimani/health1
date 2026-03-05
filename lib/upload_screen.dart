import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Upload Report"),
      ),

      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.upload_file),
          label: const Text("Upload Health Report"),
          onPressed: () {},
        ),
      ),
    );
  }
}