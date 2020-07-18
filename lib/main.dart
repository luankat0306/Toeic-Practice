import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chuyên Ngành CNTT"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body:Container(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              imageWord,
              textWord,
            ],
          ),
        ),
      ),
    );
  }
  Widget imageWord = Container(
    margin: const EdgeInsets.all(25),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3)),
        ],
    ),
    child: Image.asset(
      "assets/operating_system.jpg",
      width: 400,
      height: 200),
  );
  Widget textWord = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
    ),
    child:
        Center(
          child: Container(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[
                Text(
                  "Operating System (n)",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[800],
                    shadows: [
                      Shadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(4, 4)),
                    ],
                  ),
                ),
                Text(
                  "Hệ Điều Hành",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
    ),
  );
}
