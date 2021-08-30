import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();  
}

class _MyappState extends State<Myapp> {
  int n = 1;

  void click() {
    setState(() {
      n = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: FlatButton(
                  onPressed: click, child: Image.asset('images/ball$n.png')),
            ),
          ),
        ),
      ),
    );
  }
}
