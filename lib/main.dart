import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 38, 38),
        appBar: AppBar(
          title: const Text("dicee"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Color.fromARGB(255, 108, 176, 221),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdicenumber = 3;
  int rightdicenumber = 2;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                    print('dicenumber = $leftdicenumber');
                  });
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightdicenumber = Random().nextInt(6) + 1;
                    print('right');
                  });
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
