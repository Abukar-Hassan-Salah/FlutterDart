import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    ),
  );
}

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "CA208",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.black,
                child: Column(
                  children: [
                    // row 1
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Color.fromARGB(255, 33, 206, 240),
                              child: const Center(
                                child:  Text(
                                  "1",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Colors.black,
                              child: const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Color.fromARGB(255, 241, 40, 127),
                              child: const Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // row 2
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Colors.blue,
                              child: const Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Colors.green,
                              child: const Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // row 3
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Color.fromARGB(255, 89, 83, 92),
                              child: const Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Colors.yellow,
                              child: const Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              width: 100,
                              color: Color.fromARGB(255, 133, 19, 232),
                              child: const Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
