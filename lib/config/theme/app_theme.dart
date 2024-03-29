import 'package:flutter/material.dart';

const Color customColor = Color(0xFF5C11D4);

const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.teal,
  Colors.purple,
  Colors.green,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'Colors must between 0 and ${colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: colorThemes[selectedColor]);
  }
}
