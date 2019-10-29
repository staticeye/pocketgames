import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pocketgames_app/common/color.dart';
import 'package:pocketgames_app/common/commonElements.dart';
import 'package:pocketgames_app/common/custom_dialog.dart';
import 'package:pocketgames_app/ticTacToeGame/game_button.dart';

class TicTacToe extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TicTacToe> {
  List<GameButton> buttonList;
  var player1;
  var player2;
  var activePlayer;

  @override
  void initState() {
    super.initState();
    buttonList = doInit();
  }

  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        gb.text = "X";
        gb.background = AppColor.logoRed;
        activePlayer = 2;
        player1.add(gb.id);
      } else {
        gb.text = "O";
        gb.background = Colors.black;
        activePlayer = 1;
        player2.add(gb.id);
      }
      gb.isEnabled = false;
      int winner = checkWinner();

      if (winner == -1) {
        if (buttonList.every((p) => p.text != "")) {
          showDialog(
              context: context,
              builder: (_) => new CustomDialog("Game Tied",
                  "Press the Reset button to Start Aragin", resetGame));
        } else {
          activePlayer == 2 ? autoPlay() : null;
        }
      }
    });
  }

  void autoPlay() {
    var emptyCells = new List();
    var list = new List.generate(9, (i)=> i+1 );

    for(var cellId in list){
      if(!(player1.contains(cellId) || player2.contains(cellId))){
        emptyCells.add(cellId);
      }
    }

    var r = new Random();
    var randomIndex = r.nextInt(emptyCells.length - 1);
    var cellID = emptyCells[randomIndex];

    int i = buttonList.indexWhere((p)=> p.id == cellID);
    playGame(buttonList[i]);
  }
  int checkWinner() {
    var winner = -1;
    //Row 1
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }

    //Row 2
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }

    //Row 3
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }

    //Col 1
    if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(4) && player2.contains(7)) {
      winner = 2;
    }

    //Col 2
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }

    //Col 3
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }

    //diagonal l to r
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }

    //diagonal r to l
    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }

    if (winner != -1) {
      if (winner == 1) {
        showDialog(
            context: context,
            builder: (_) => new CustomDialog("Player 1 Won",
                "Press Reset button to start the game again", resetGame));
      } else {
        showDialog(
            context: context,
            builder: (_) => new CustomDialog("Player 2 Won",
                "Press Reset button to start the game again", resetGame));
      }

    }

          return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);

    setState(() {
      buttonList = doInit();
    });
  }

  void resetGameButton() {
    setState(() {
      buttonList = doInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
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
                  onPressed: buttonList[i].isEnabled
                      ? () => playGame(buttonList[i])
                      : null,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    buttonList[i].text,
                    style: TextStyle(color: Colors.white, fontSize: 35.0),
                  ),
                  color: buttonList[i].background,
                  disabledColor: buttonList[i].background,
                ),
              ),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(
                vertical: CommonElements.getTopBotAstoScrHeight(context, 2)),
            child: Text(
              "Reset",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: resetGameButton,
            color: AppColor.logoRed,
          ),
        ],
      ),
    );
  }

  List<GameButton> doInit() {
    player1 = new List();
    player2 = new List();
    activePlayer = 1;

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
