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
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text("Global Design"),
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
              child: Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/duur.jpg"),
            height: 200,
            width: 500,
          )),

          Text(
            "Keymaha Duleedka Mogadisho",
            style: TextStyle(fontSize: 25, letterSpacing: 1),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                " Mogadisho,Somalia",
                style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 3.0,
                    color: Color.fromARGB(255, 43, 42, 42)),
              ),
              SizedBox(
                width: 145,
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    " 22",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2.0, color: Colors.red),
                  ),
                ],
              )
            ],
          ),

          Divider(
            height: 25,
            color: Colors.black,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                color: Color.fromARGB(255, 247, 54, 6),
              ),
              Text("  CALL", style: TextStyle(fontSize: 20, color: Colors.red)),
              SizedBox(
                height: 100,
                width: 60.0,
              ),
              Icon(
                Icons.message,
                color: Color.fromARGB(220, 252, 54, 4),
              ),
              Text("  ROUTE",
                  style: TextStyle(fontSize: 20, color: Colors.red)),
              SizedBox(
                height: 30,
                width: 40,
              ),
              Icon(Icons.share, color: Color.fromARGB(255, 250, 7, 7)),
              Text(
                "  SHARE",
                style: TextStyle(fontSize: 20, color: Colors.red),
              )
            ],
          ),
          Center(
            child: Text(
              """
  What are the intermediate and long-term 
  metrics/goals
  you expect to achieve? (Qual/Quant). 
    What are the long-term outcomes you  
  expect from the project?
    (Qual/Quant)
    What are the intermediate and long-term 
  metrics/goals
  you expect to achieve? (Qual/Quant). 
    What are the long-term outcomes you  
  expect from the project?
    (Qual/Quant)
              """,
              style: TextStyle(fontSize: 17.4),
            ),
          ),

          // this saperates the name Text and the title text
          SizedBox(height: 10),
          // this is my title text and its styling

          // this saperates the text of my name and title and the container and  icons

          // this the container widget
        ],
      ),
    );
  }
}
