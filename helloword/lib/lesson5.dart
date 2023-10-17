import 'package:flutter/material.dart';

class LessonFive extends StatefulWidget {
  const LessonFive({super.key});

  @override
  State<LessonFive> createState() => _LessonFiveState();
}

class _LessonFiveState extends State<LessonFive> {
  int count = 1;
  Color bgColor = Colors.pink;
  @override
  Widget build(BuildContext context) {
    print(" CALLED");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 250,
            color: bgColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {
                  bgColor = Colors.yellow;
                  setState(() {});
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bgColor = Colors.green[300] ?? bgColor;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green[300],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bgColor = Colors.blueGrey;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  duration: Duration(milliseconds: 300),
                  content: Text("Success"),
                ),
              );
            },
            child: const Text("Show Snackbar"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        label: const Text("ADD"),
      ),
    );
  }
}
 169 changes: 169 additions & 0 deletions169  
lib/lesson_four.dart
@@ -0,0 +1,169 @@
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonFour extends StatefulWidget {
  const LessonFour({super.key});

  @override
  State<LessonFour> createState() => _LessonFourState();
}

class _LessonFourState extends State<LessonFour> {
  int level = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 68, 39),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 68, 39),
        title: const Text("My Card"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3)),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/3.jpeg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Name",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "ahmed".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Phone",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "+2526XXXXXXX".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "E-mail",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "ahmed@gmail.com".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Work",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.work, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Mobile Dev".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Level",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$level".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              level++;

              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(

            backgroundColor: Colors.red,
            onPressed: () {
              if (level > 0) {
                level--;
                setState(() {});
              }
            },
            child: const Icon(CupertinoIcons.minus),
          )
        ],
      ),
    );
  }
}