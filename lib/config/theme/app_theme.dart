import 'package:flutter/material.dart';

const Color _customColor = Color(0xff6750a4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColorIndex;

  AppTheme({this.selectedColorIndex = 0})
    : assert(
        selectedColorIndex >= 0 && selectedColorIndex < _colorThemes.length,
        'selectedColorIndex must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColorIndex],
      // brightness: Brightness.dark,
    );
  }
}
