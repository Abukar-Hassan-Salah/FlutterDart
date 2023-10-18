import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // scafold,drawer,floatbottom and floatnavigation bottom
        home: Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'First Lesson Of Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
      drawer: const Drawer(
        child: Text('Menu App'),
      ),
      body: const Center(
          child: Text("Welcome to Flutter!",
              style: TextStyle(fontSize: 20, color: Colors.white))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text(" + "),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add_rounded), label: 'BookMark'),
        BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined), label: 'School'),

        // BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Profile'),
      ]),
    ));
  }
}
