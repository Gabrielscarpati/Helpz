import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BoxDecoration BoxDecorationGradient(BuildContext context) {
  return BoxDecoration(
      gradient: LinearGradient(begin: Alignment.topCenter, colors: [
    Colors.blue.shade900,
    Colors.blue.shade500,
    Colors.blue.shade100,
  ]));
}

List<Color> colorGradient = [
  Colors.blue.shade900,
  Colors.blue.shade500,
  Colors.blue.shade400,
];
