import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BMICalculatorScreen(),
    );
  }
}

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  double height = 150;
  double weight = 60;
  double bmi = 0;
  bool isLoading = false;

  void calculateBMI() {
    setState(() {
      isLoading = true;
    });

    // Simulate a delay to show the loading spinner
    Future.delayed(const Duration(seconds: 2), () {
      double heightInMeters = height / 100;
      bmi = weight / (heightInMeters * heightInMeters);

      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Height (cm)',
              style: TextStyle(fontSize: 16),
            ),
            Slider(
              min: 100,
              max: 200,
              divisions: 100,
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Weight (kg)',
              style: TextStyle(fontSize: 16),
            ),
            Slider(
              min: 30,
              max: 150,
              divisions: 120,
              value: weight,
              onChanged: (value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: calculateBMI,
              child: const Text('Calculate BMI'),
            ),
            const SizedBox(height: 16),
            isLoading
                ? const SpinKitFadingCircle(
                    color: Colors.blue,
                    size: 50.0,
                  )
                : Text(
                    'BMI: ${bmi.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
          ],
        ),
      ),
    );
  }
}
