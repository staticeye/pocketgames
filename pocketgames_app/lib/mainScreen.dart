import 'package:flutter/material.dart';
import 'gameSelection.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Play"
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GameSelection()),
            );
          },
        ),
      ),
    );
  }
}