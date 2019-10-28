

import 'package:flutter/material.dart';

class GameButton{
  final id;
  String text;
  Color background;
  bool isEnabled;

  GameButton({this.id, this.text = "", this.background = Colors.grey, this.isEnabled = true});
  
}