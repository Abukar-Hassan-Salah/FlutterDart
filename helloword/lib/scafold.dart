import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('First Lesson Of Flutter')),
      drawer: const Drawer(
        child: Text('Menu App'),
      ),
      body: const Center(child: Text("Welcome to Flutter!")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(" + ");
      }),
    ));
  }
}
