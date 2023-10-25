// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final String phone;

  const ScreenTwo({
    super.key,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(child: Text('Shaashada Labaad')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 25),
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              email,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              phone,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
