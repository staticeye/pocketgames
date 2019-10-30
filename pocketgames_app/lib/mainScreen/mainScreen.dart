import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:pocketgames_app/common/commonElements.dart';
import 'package:pocketgames_app/gameSelection/gameSelection.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          Container(
            alignment: FractionalOffset(0.5, 0.25),
            padding: EdgeInsets.symmetric(horizontal: CommonElements.getLetRigAstoScrWidth(context, 2)),
            child: Image(image: AssetImage("assets/images/pocketGames.png"),
            fit: BoxFit.cover,),
          ),
          Container(
            alignment: FractionalOffset(0.5, 0.95),
            child: SizedBox(
              width: 250.0,
              child: FlatButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, 'GameSelection');},
              child: Image(image: AssetImage("assets/images/playButton.png"),)
            ),
            )
          ),
        ],
      )
    );
  }
}