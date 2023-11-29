import 'package:flutter/material.dart';

void main() {
  runApp(const Ass());
}

class Ass extends StatefulWidget {
  const Ass({Key? key}) : super(key: key);

  @override
  State<Ass> createState() => _AssState();
}

class _AssState extends State<Ass> {
  String? selectedButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Today Assignment'),
          centerTitle: true,
          backgroundColor: Colors.grey[870],
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = 'Abukar';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 200, 197, 197)),
                  ),
                  child: const Text(
                    'Abukar',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = 'Hassan';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 193, 183, 183)),
                  ),
                  child: const Text(
                    'Hassan',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = 'Salah';
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 143, 140, 140)),
                  ),
                  child: const Text(
                    'Salah',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 225, 208, 208),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 168, 157, 157),
                borderRadius: BorderRadius.circular(12.0),
              ),
              width: double.infinity,
              height: 200.0,
              child: Text(
                'Selected Name : $selectedButton',
                style: const TextStyle(
                  color: Color.fromARGB(255, 250, 250, 250),
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
