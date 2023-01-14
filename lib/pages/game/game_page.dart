// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.rocket_launch),
            SizedBox(width: 10),
            Text(' GUESS NUMBER GAME '),
            SizedBox(width: 10),
            Icon(Icons.rocket_launch)
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Please guess number between 1-100'),
          ),
          TextField(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlinedButton(
              onPressed: (){

            },
              child: Text('Guess'),
            ),
          )
        ],
      ),
    );
  }
}
