import 'package:flutter/widgets.dart';

extension ColorInvert on TextStyle {
  TextStyle withInvertedColor({double opacity = 1}) {
    var source = color!;
    var inverted = Color.fromRGBO(255 - source.red, 255 - source.green, 255 - source.blue, opacity);
    return copyWith(color: inverted);
  }
}