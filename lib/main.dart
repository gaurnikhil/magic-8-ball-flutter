import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text(
                'Ask Me Anything',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: magic8Ball()),
      ),
    );

class magic8Ball extends StatefulWidget {
  @override
  _magic8BallState createState() => _magic8BallState();
}

class _magic8BallState extends State<magic8Ball> {
  int number = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    number = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$number.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
