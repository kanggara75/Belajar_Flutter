import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String pesan = "Ini adalah pesan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("007. Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pesan),
              RaisedButton(
                child: Text("Tekan Saya"),
                onPressed: () {
                  setState(() {
                    pesan = "Pesan Ditekan menggunkan AM";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
