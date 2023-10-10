import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 231, 236),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            backgroundColor: Colors.red[500],
            title: const Text('GLobal Design'),
            centerTitle: true,
            leading: const Icon(Icons.menu),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                // this is the tree dots of the right side of the app
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        // this is the whole home of our app
        body: Column(
          children: [
            Image.asset(
              'assets/duur.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: 500,
            ),
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keymaha Duleedka Tieglow",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Mogadisho,Somalia",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            letterSpacing: 5),
                      ),
                    ],
                  ),
                ),
                // container and its column are using to control the fovorite icon and its text
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red[500],
                        size: 30,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "22",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(
              height: 2,
              thickness: 2,
            ),
            //this  container parent wedget that allows us to create more container
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // container and its column are using to control the call icon and its text
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.red[500],
                          size: 30,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "CALL",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  // container and its column are using to control the near me icon and its text
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.near_me,
                          color: Colors.red[500],
                          size: 30,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "ROUTE",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  // container and its column are using to control the share icon and its text
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.red[500],
                          size: 30,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "SHARE",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // this container we are using to control our text
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: const Text(
                """Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.
Firebase is the most popular backend for Flutter. It offers a wide variety of tools and services to help developers build high-quality apps, grow their user base, and earn more profit. Firebase is divided into two parts: Firebase products and Google Cloud Platform products""",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  letterSpacing: 3,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
      ),
    );
  }
}
