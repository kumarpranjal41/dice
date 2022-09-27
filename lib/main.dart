import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //removed DEBUGED BANNER

    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.yellow,
        title: Text('pranjal kumar'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.search)],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1000),
                bottomRight: Radius.circular(2000))),
        bottom: PreferredSize(
          child: SizedBox(),
          preferredSize: Size.fromHeight(200),
        ),
      ),
      body: dicepage(),
    ),
  ));
}

class dicepage extends StatefulWidget {
  const dicepage({super.key});

  @override
  State<dicepage> createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  @override
  int leftdicenumber = 2;
  int rightdicenumber = 3;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: (() {
                  setState(() {
                    leftdicenumber = Random().nextInt(6) + 1;
                    print('dice number = $leftdicenumber');
                  });
                }),
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: (() {
                    setState(() {
                      rightdicenumber = Random().nextInt(6) + 1;
                    });
                  }),
                  child: Image.asset('images/dice$rightdicenumber.png')),
            ),
          )
        ],
      ),
    );
  }
}
