import 'package:flutter/material.dart';

class CommonElements {
  static double getTopBotAstoScrHeight(context, double height) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (screenHeight * height) / 100;
  }

  static double getLetRigAstoScrWidth(context, double width) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth * width) / 100;
  }

  static double getFontSize(context, double size) {
    double fontSize;
    double screenHeight = MediaQuery.of(context).size.height;

    if (size == -1){
      fontSize = screenHeight > 1000 ? 24 : 20;
    }else{
      fontSize = screenHeight > 1000 ? size + 4 : size;
    }
    return fontSize;
  }
}
