// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontSize),
                maxLines: null,
              ),
            ),
            Slider(
              value: _fontSize,
              onChanged: changeSize,
              min: 30,
              max: 200,
            )
          ],
        ),
      ),
    ));
  }

  void changeSize(double newSize) {
    setState(() {
      _fontSize = newSize;
    });
  }
}
