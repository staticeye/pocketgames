import 'package:flutter/material.dart';
import 'package:pocketgames_app/ticTacToeGame/ticTacToeGame.dart';

class GameSelection extends StatelessWidget {

  static void doCardAction(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Game Selection"),
      ),
      body: Container(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image(
              color: Color.fromRGBO(255, 255, 255, 0.1),
              colorBlendMode: BlendMode.modulate,
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            padding: EdgeInsets.all(3.5),
            children: <Widget>[
              Container(
                  child: Card(
                    color: Colors.amber[200],
                    child: ListTile(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TicTacToe()));},
                      leading: Image(
                        image: AssetImage("lib/gameSelection/images/ticTacToe.png"),
                      ),
                      title: Text("Tic Tac Toe"),
                    ),
                  )
                  )
            ],
          ),
        ],
      )),
    );
  }
}
