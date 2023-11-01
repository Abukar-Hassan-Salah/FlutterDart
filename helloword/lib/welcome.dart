import 'package:flutter/material.dart';

void main() {
  runApp(const Ass());
}

class Ass extends StatelessWidget {
  const Ass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Today Assignment'),
        ),
        body: const AssWidget(),
      ),
    );
  }
}

class AssWidget extends StatefulWidget {
  const AssWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AssState createState() => _AssState();
}

class _AssState extends State<AssWidget> {
  int selectedRow = 0;
  List<String> names = ['Abukar', 'Hassan', 'Salah'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < names.length; i++)
          GestureDetector(
            onTap: () {
              setState(() {
                selectedRow = i;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: selectedRow == i ? Colors.blue : Colors.white,
              child: Text(
                names[i],
                style: TextStyle(
                  fontSize: 20.0,
                  color: selectedRow == i ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        const SizedBox(height: 20.0),
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.grey[300],
          child: Text(
            'Selected Row: ${names[selectedRow]}',
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}
