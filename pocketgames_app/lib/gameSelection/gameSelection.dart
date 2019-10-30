import 'package:flutter/material.dart';
import 'package:pocketgames_app/common/color.dart';
import 'package:pocketgames_app/common/commonElements.dart';
import 'package:pocketgames_app/ticTacToeGame/ticTacToeGame.dart';

class GameSelection extends StatelessWidget {

  static void doCardAction(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Game Selection",
        style: TextStyle(
          fontSize: CommonElements.getFontSize(context, -1)
        ),),
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
            padding: EdgeInsets.symmetric(horizontal: CommonElements.getTopBotAstoScrHeight(context, 0.5),vertical: CommonElements.getLetRigAstoScrWidth(context, 0.5)),
            children: <Widget>[
              Container(
                  child: Card(
                    color: AppColor.lightAmberColor,
                    child: ListTile(
                      onTap: (){Navigator.pushNamed(context, 'TicTacToe');},
                      leading: Image(
                        image: AssetImage("lib/gameSelection/images/ticTacToe.png"),
                      ),
                      title: Text("Tic Tac Toe",
                      style: TextStyle(
                        fontSize: CommonElements.getFontSize(context, 16)
                      ),),
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
