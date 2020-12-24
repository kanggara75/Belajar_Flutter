import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("010. Animated Countainer && Gesture Detector"),
        ),
        body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(
                255,
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
              duration: Duration(seconds: 1),
              width: 100.0 + random.nextInt(101),
              height: 100.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
