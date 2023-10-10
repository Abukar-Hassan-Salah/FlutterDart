import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logic Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogicDesignPage(),
    );
  }
}

class LogicDesignPage extends StatefulWidget {
  @override
  _LogicDesignPageState createState() => _LogicDesignPageState();
}

class _LogicDesignPageState extends State<LogicDesignPage> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logic Design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Button is ${isButtonPressed ? 'Pressed' : 'Not Pressed'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isButtonPressed = !isButtonPressed;
                });
              },
              child: Text('Toggle Button'),
            ),
          ],
        ),
      ),
    );
  }
}