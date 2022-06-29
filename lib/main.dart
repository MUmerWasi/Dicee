import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  _DicePageState createState() {
    return _DicePageState();
  }
}

class _DicePageState extends State<DicePage> {
  var leftdicebutton = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdicebutton = Random().nextInt(6) + 1;
                });
                //print('Left Button');
              },
              child: Image.asset('images/dice$leftdicebutton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                leftdicebutton = Random().nextInt(6) + 1;
              },
              child: Image.asset('images/dice$leftdicebutton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
