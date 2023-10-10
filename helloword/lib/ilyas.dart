import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: SafeArea(
    child: Scaffold(
        body: Text(
      "Custom font",
      style: TextStyle(fontSize: 30, fontFamily: "Pacifico"),
    )),
  )));
}

// Images
// Center(
// child:
// Image(image: NetworkImage(""),)
// Image(image: AssetImage("assets/images/pizza.png"),)
// Image.network("")
// Image.asset("assets/images/pizza.png", height: 300, width: 200,),
// )


// Container
// Container(
// // margin: EdgeInsets.only(top: 15, left: 15),
// margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
// padding: EdgeInsets.all(30),
// height: 100,
// width: 100,
// color: Colors.green,
// transform: Matrix4.rotationZ(0.3),
// child: Center(
// child: Text("Some text", style: TextStyle(color: Colors.white),),
// ),
// )


// Custom font
// fonts:
//   - family: Pacifico
//   fonts:
//     - asset: assets/fonts/Pacifico-Regular.ttf