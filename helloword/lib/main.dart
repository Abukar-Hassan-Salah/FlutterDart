import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //these codes tells us what we put our Scafold such as AppBar,Body
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text("Welcome To Flutter"),
        centerTitle: true,
        actions: const [
          Icon(Icons.person),

          SizedBox(
            width: 10,
          ),
          Icon(Icons.tiktok),
          // this make saperate the two icons
          SizedBox(width: 10),
          Icon(Icons.music_note),
        ],
      ),
      // this is the background of the emulator
      backgroundColor: Colors.pink,
      // these tells us what we use the body of the scafold
      body: Column(
          // these are the styling and some image properties
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            )),
            // these saperates the image its texts
            const SizedBox(
              height: 20,
            ),
            // this my name text and it styling
            const Text(
              "Abukar Hassan Salah ",
              style: TextStyle(fontSize: 37),
            ),
            // this saperates the name Text and the title text
            const SizedBox(height: 10),
            // this is my title text and its styling
            const Text(
              "I Am Graphic Designer!",
              style: TextStyle(fontSize: 15, letterSpacing: 5.0),
            ),
            // this saperates the text of my name and title and the container and  icons
            const SizedBox(height: 20),
            // this the container widget
            Container(
              height: 55,
              // this marging wuxuu noo ogalanyaa inaa containerka dhinacyada ka soo sikino
              margin: const EdgeInsets.only(left: 25.0, right: 25.0),
              // this padding wuxuu noo ogalaanyaa inaa mobile iconka bedix ka soo sikino
              padding: const EdgeInsets.only(left: 14.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0)),
              // this row make our icon and our container to become rows
              child:
                  // this row widget
                  const Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  // this allows us to seperate our phone text and its icon
                  SizedBox(
                    width: 14.0,
                  ),
                  Text("617436318")
                ],
              ),
            )
          ]),
    );
  }
}
