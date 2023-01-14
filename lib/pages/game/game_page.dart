// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../game.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();
  var _game = Game();
  var _feedbacktext = '';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                  color: Colors.black12,
                  child: Center(
                    child: Text(
                      'Please guess number between 1-10',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightGreenAccent,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ))),
          Expanded(
              child: Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter ur guess'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: OutlinedButton(
                          onPressed: () {
                            var input =_controller.text;

                            var guess =int.tryParse(input);
                            var result = _game.doGuess(guess!);
                            if(result == GuessResult.correct){
                              setState((){
                                _feedbacktext = 'correct';
                              });

                            }else if(result == GuessResult.tooHigh){
                              setState((){
                                _feedbacktext = 'too high';
                              });

                            }else{
                              setState((){
                                _feedbacktext = 'too low';
                              });
                            }
                            print(input);
                          },
                          child: Text(
                            'Guess',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      
                    ],
                  ))),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(_feedbacktext),
          )

        ],
      ),
    );
  }
}
