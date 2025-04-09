import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6)+1; // Generates a random number between 1 and 6
    rightDiceNumber = Random().nextInt(6)+1;
    // print('DiceNumber: $leftDiceNumber');
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(onPressed: () { 
                setState(() {
                  changeDiceFace();
                });
               },
              child: Image.asset('images/dice$leftDiceNumber.png')), // String Interpolation
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(onPressed: () {
                setState(() {
                  changeDiceFace();
                }); 
               },
              child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}