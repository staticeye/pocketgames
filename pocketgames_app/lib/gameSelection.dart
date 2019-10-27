import 'package:flutter/material.dart';
import 'package:pocketgames_app/ticTacToeGame.dart';

class GameSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Game Selection"
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Tic Tac Toe"
          ),
          onPressed: (){Navigator.push(context, MaterialPageRoute(
            builder: (context)=>TicTacToeGame()
          ));},
        ),
      ),
    );
  }
}