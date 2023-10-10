import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // this the start of the appbar and its row
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Profile',
                style: TextStyle(fontSize: 25),
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Add your settings icon onPressed functionality here
                },
              ),
            ],
          ),
        ),
        // this the end of the appbar
        // and the start of the body of the whole app
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.0,
                  color: Color.fromARGB(255, 250, 173, 173),
                  // Set your desired background color here
                  child: Row(
                    children: [
                      Text(
                        ' General'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 197, 40, 29),
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                // end of the general container and its row
                // start of the favourite  row
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 4.0),
                      Text(
                        ' Favourite Doctor',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 217),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // end of the favorite row
                // start of the notification row
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.notification_add),
                      SizedBox(width: 4.0),
                      Text(
                        ' Notofications ',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 225),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  // end of the notification row
                  // start of the my card row
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      Icon(Icons.card_giftcard_sharp),
                      SizedBox(width: 4.0),
                      Text(
                        ' My cards',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 258),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of the row of the my card
                // the start of the rate us row and its info
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.grade_rounded),
                      SizedBox(width: 4.0),
                      Text(
                        'Rate Us',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 270),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of the rate rate and its info
                // star of the aboub container and its rows
                const SizedBox(height: 10.0),
                Container(
                  height: 50.0,
                  color: Color.fromARGB(255, 250, 173, 173),
                  child: Row(
                    children: [
                      Text(
                        '  about app'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 203, 21, 9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // the end of the about app container and its rows
                // the start of the about app row
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.lock_clock),
                      SizedBox(width: 10.0),
                      Text(
                        'About App',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 248),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of about app row and its info
                // the start of the privacy and policy row
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip),
                      SizedBox(width: 10.0),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 227),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of privacy and policy
                // the start of the terms and condition row
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.list),
                      SizedBox(width: 10.0),
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 191),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of the term and condition row
                // the start of the help and support row
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.help),
                      SizedBox(width: 10.0),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 220),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // the end of the help and support row
                // the start of the sign in row
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 10.0),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 268),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                // the end of the sign in row
              ],
            ),
            // the end of the colum of the whole app
          ),
        ),
        // start of the bottomNaviagationbar
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_rounded), label: 'BookMark'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined), label: 'School'),
          // BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Profile'),
        ]),
        // the end of the bottomNavigationbar
      ),
    );
  }
}
