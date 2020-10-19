import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int answwerNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                answwerNum = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$answwerNum.png'),
            ),
          ),
        ),
      ),
    );
  }
}
