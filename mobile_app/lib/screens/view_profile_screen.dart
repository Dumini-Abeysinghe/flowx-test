import 'package:flutter/material.dart';

class viewProfileScreen extends StatelessWidget {
  const viewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Profile", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      backgroundColor: const Color(0xFFF5F7FA),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 3, 23, 134),
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            profileDetail("Name", "Harry Potter"),
            profileDetail("Email", "harry@gmail.com"),
            profileDetail("Phone", "0702145375"),
            profileDetail("Address", "Potter, Hogwarts, London"),
            profileDetail("Home Town", "Hogwarts"),
            profileDetail("Gramasewaka Division", "Hogwarts"),
            profileDetail("Far from the River", "5km"),
          ],
        ),
      ),
    );
  }

  Widget profileDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 5),
          Text(value, style: const TextStyle(fontSize: 16, color: Colors.black87)),
          const Divider(),
        ],
      ),
    );
  }
}
