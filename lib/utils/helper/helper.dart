import 'package:flutter/material.dart';

class AppHelper {
  //Todo: add isdarkmode
  //Todo: add navigate to another screen
  // get colors with using their name
  static Color? getColor(String color) {
    switch (color) {
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'red':
        return Colors.red;
      case 'white':
        return Colors.white;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
    }
    return null;
  }
}
