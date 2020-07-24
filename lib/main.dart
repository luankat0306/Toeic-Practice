import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Toeic Practice",
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                      Color(0xFF396AFC),
                      Color(0xFF1948FF),
                    ],
                ),
                image: DecorationImage(
                  image: AssetImage("assets/n1003969.png")
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ]
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/aircraft.png"),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Hello Luân!",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          color: Colors.black.withOpacity(0.1),
                        )
                      ]
                    ),
                    child: TextField(

                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


