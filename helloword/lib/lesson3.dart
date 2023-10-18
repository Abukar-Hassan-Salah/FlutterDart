import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xff264653),
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: const Color(0xff264653),
      ),

      // body: Row(

      //   children: [
      //     Expanded(
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //      Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //              ),
      //      Expanded(
      //       flex: 3,
      //        child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.black,
      //                ),
      //      ),

      //   ],
      // ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/duur.jpg",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Name",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Abukar Hassan".toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Work",
              style: TextStyle(color: Color.fromARGB(255, 217, 240, 8)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Mobile Developer".toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "E-mail",
              style: TextStyle(color: Color.fromARGB(255, 235, 243, 5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Abukar@gmail.com".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Phone",
              style: TextStyle(color: Color.fromARGB(255, 191, 234, 3)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "+25617436318".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Level",
              style: TextStyle(color: Color.fromARGB(255, 220, 231, 3)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.grade,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "100".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            )
          ],
        ),
        
      ),
    ));
  }
}
