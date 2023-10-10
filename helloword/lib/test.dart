import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //these codes tells us what we put our Scafold such as AppBar,Body
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 5, 5),
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text("Global Design"),
        centerTitle: true,
        actions: const [
          SizedBox(
            height: 20,
          ),
          Icon(Icons.more_vert),
        ],
      ),

      // this is the background of the emulator
      backgroundColor: Color.fromARGB(255, 247, 245, 246),
      // these tells us what we use the body of the scafold
      body: Column(
        // these are the styling and some image properties
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          const Center(
              child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/duur.jpg'),
          )),
          // these saperates the image its texts
          // const SizedBox(
          //   height: 20,
          //   width: 30,
          // ),

          // this my name text and it styling
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "  Keymaha Duleedka Beledweyne ",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),

          // this saperates the name Text and the title text
          const SizedBox(height: 10),
          // this is my title text and its styling
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                " Mogadisho,Somalia",
                style: TextStyle(fontSize: 15, letterSpacing: 5.0),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Color.fromARGB(255, 231, 32, 6)),
              Text(" 22 "),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),

          const Divider(
            height: 20,
            color: Colors.black,
          ),

          // this saperates the text of my name and title and the container and  icons
          const SizedBox(height: 20),

          // this the container widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 55,
                // // this marging wuxuu noo ogalanyaa inaa containerka dhinacyada ka soo sikino
                margin: const EdgeInsets.only(left: 25.0, right: 25.0),
                // // this padding wuxuu noo ogalaanyaa inaa mobile iconka bedix ka soo sikino
                padding: const EdgeInsets.only(left: 20.0),

                // decoration: BoxDecoration(
                //     // color: Colors.white,
                //     borderRadius: BorderRadius.circular(14.0)
                //     ),
                // this row make our icon and our container to become rows

                child:
                    // this row widget
                    const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 247, 54, 6),
                    ),
                    Text("CALL",
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    SizedBox(
                      height: 1000,
                      width: 14.0,
                    ),
                    Icon(Icons.message, color: Color.fromARGB(220, 252, 54, 4)),
                    Text("  ROUTE",
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    SizedBox(
                      height: 20,
                      width: 30,
                    ),
                    Icon(Icons.share, color: Color.fromARGB(255, 250, 7, 7)),
                    Text(
                      "  SHARE",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),

          const Center(
            child: Text(
              " Lorem ipsum, dolor sit amet consectetur adipisicing elit. Possimus porro quo architecto odit veritatis nisi sapiente a distinctio! Animi, non dolorem blanditiis reiciendis ipsum provident? Reprehenderit eligendi natus esse odio",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,

                  // fontFamily: 'arial',

                  fontSize: 25,
                  letterSpacing: 2.0,
                  color: Colors.black,
                  wordSpacing: 3.0),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
