import 'package:flutter/material.dart';
import 'package:pocketgames_app/ticTacToeGame/game_button.dart';

class TicTacToe extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TicTacToe> {
  List<GameButton> buttonList;

  @override
  void initState() {
    super.initState();
    buttonList = doInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 9.0,
          mainAxisSpacing: 9.0,
        ),
        itemCount: buttonList.length,
        itemBuilder: (context, i) => SizedBox(
          width: 100.0,
          height: 100.0,
          child: RaisedButton(
            onPressed: null,
            padding: EdgeInsets.all(8.0),
            child: Text(
              buttonList[i].text,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            color: buttonList[i].background,
            disabledColor: buttonList[i].background,
          ),
        ),
      ),
    );
  }

  List<GameButton> doInit() {
    var gameButtons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];

    return gameButtons;
  }
}
