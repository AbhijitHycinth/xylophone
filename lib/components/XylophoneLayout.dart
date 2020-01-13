import 'package:flutter/material.dart';
import 'package:xylophone/widgets/AudibleButton.dart';

class XylophoneLayout {
  List<Color> _colors = [
    Colors.red[900],
    Colors.orange[900],
    Colors.yellow[900],
    Colors.green[500],
    Colors.brown[500],
    Colors.indigo,
    Colors.deepPurple,
  ];

  List<Widget> getXylophoneKeys() {
    List<Widget> keys = [];
    this._colors.asMap().forEach((index, Color color) {
      keys.add(
        Expanded(
            child:
                AudibleButton(color, 'note' + (index + 1).toString() + '.wav')),
      );
    });
    return keys;
  }
}
