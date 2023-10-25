// ScreenOne.dart
import 'package:flutter/material.dart';
import 'package:helloword/ScreenTwo.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    ),
  );
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Center(child: Text('Shaashada Kowaad')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Abukar Hassan Salah',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'abukarhassansalah@gmail.com',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              '617436318',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenTwo(
                      image: 'assets/Abukar.jpg',
                      name: 'Abukar Hassan Salah',
                      email: 'abukarhassansalah@gmail.com',
                      phone: '617436318',
                    ),
                  ),
                );
              },
              child: const Text(
                'Aad Shaashada Labaad',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
