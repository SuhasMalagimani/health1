import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Health Timeline"),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.favorite, color: Colors.red),
            title: Text("ECG Test"),
            subtitle: Text("Feb 2024"),
          ),

          ListTile(
            leading: Icon(Icons.science, color: Colors.blue),
            title: Text("Cholesterol Test"),
            subtitle: Text("Jan 2024"),
          ),

          ListTile(
            leading: Icon(Icons.local_hospital, color: Colors.green),
            title: Text("Doctor Prescription"),
            subtitle: Text("Dec 2023"),
          )

        ],
      ),
    );
  }
}