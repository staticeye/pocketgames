import 'package:flutter/material.dart';
import 'package:pocketgames_app/common/color.dart';
import 'package:pocketgames_app/ticTacToeGame/ticTacToeGame.dart';
import 'gameSelection/gameSelection.dart';
import 'mainScreen/mainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainScreen(),
        'GameSelection': (context) => GameSelection(),
        'TicTacToe': (context) => TicTacToe()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.backgroundColor,
      ),
    );
  }
}
