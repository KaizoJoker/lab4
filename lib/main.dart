
import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  void changeDiceFace() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
     
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice App'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: FloatingActionButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('assets/dice $leftDiceNum.jpg'))),
              Expanded(
                  child: FloatingActionButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('assets/dice $rightDiceNum.jpg'))),
            ],
          ),
        ),
      ),
    );
  }
}
