import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rohan"),
          ),

          ListTile(
            leading: Icon(Icons.bloodtype),
            title: Text("Blood Group: B+"),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone: 9876543210"),
          )

        ],
      ),
    );
  }
}