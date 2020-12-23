import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;

  void tekanTombol() {
    setState(() {
      i = i + 1;
    });
  }

  void reset() {
    setState(() {
      i = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                i.toString(),
                style: TextStyle(
                  fontSize: 10 + i.toDouble(),
                ),
              ),
              RaisedButton(
                child: Text("Tambah Angka"),
                onPressed: tekanTombol,
              ),
              RaisedButton(
                child: Text("Reset Angka"),
                onPressed: reset,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
