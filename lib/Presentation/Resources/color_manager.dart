import 'dart:math';
import 'package:flutter/material.dart';

class ColorManager {
  static Color black = HexColor.hexString(color: "#050404");
  static Color splash = HexColor.hexString(color: "#001427");
  static Color white = HexColor.hexString(color: "#FFFFFF");
  static Color generateRandomColors() {
    var random = Random();
    String newColor = "";
    for (int i = 1; i <= 6; i++) {
      newColor += random.nextInt(9).toString();
    }
    newColor = "FF$newColor";
    return Color(int.parse(newColor, radix: 16));
  }
}

extension HexColor on Color {
  static Color hexString({required String color}) {
    color = color.replaceAll("#", "");
    if (color.length == 6) {
      color = "FF$color";
    }
    return Color(int.parse(color, radix: 16));
  }
}
