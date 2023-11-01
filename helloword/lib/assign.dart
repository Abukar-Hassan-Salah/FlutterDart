import 'package:flutter/material.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assign(),
    ),
  );
}
class Assign extends StatelessWidget {
  const Assign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment"),
        ),
        body: const Row(children: [
          Text("Hassan"),
          Text("Salah"),
          Text("Cali")
          
        ],),
      ),
    );
  }
}