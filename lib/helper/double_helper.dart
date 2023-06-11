import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DoubleFormatter on double? {
  String currencyBalance() {
    final formatPattern = NumberFormat("#,###");
    return this != null ? formatPattern.format(this) : "0";
  }

  String mmssFormatDuration() {
    int minutes = (this! * 60).truncate();
    int seconds = ((this! * 3600) % 60).truncate();
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');
    return "$minutesStr:$secondsStr";
  }
}

extension DoubleSizing on double {
  double getSize(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;

    double scaleFactor = 1.0;

    if (shortestSide >= 600) {
      scaleFactor = shortestSide / 600;
    } else {
      scaleFactor = shortestSide / 360;
    }
    return this * scaleFactor;
  }
}
