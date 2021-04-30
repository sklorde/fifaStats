import 'package:flutter/material.dart';

// ignore: missing_return
Color getOVRcolor(int overall) {
  if (overall.isBetween(0, 50)) return Color.fromRGBO(209, 57, 19, 1);

  if (overall.isBetween(49, 60)) return Color.fromRGBO(231, 126, 35, 1);

  if (overall.isBetween(59, 70)) return Color.fromRGBO(255, 201, 64, 1);

  if (overall.isBetween(69, 80)) return Color.fromRGBO(155, 191, 48, 1);

  if (overall.isBetween(79, 100)) return Color.fromRGBO(76, 175, 80, 1);
}

extension Range on num {
  bool isBetween(num from, num to) {
    return from < this && this < to;
  }
}
