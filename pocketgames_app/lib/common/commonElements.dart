import 'package:flutter/cupertino.dart';

class CommonElements {
  static double getTopBotAstoScrHeight(context, double height) {
    double screenHeight = MediaQuery.of(context).size.height;
    return (screenHeight * height) / 100;
  }

  static double getLetRigAstoScrHeight(context, double width) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth * width) / 100;
  }
}
