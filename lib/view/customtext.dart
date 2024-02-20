import 'package:flutter/material.dart';
import 'package:registration/configs/constants.dart';

class customtitleText extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double labelFontSize;
  const customtitleText(
      {super.key,
      required this.label,
      this.labelColor = appGreyColor,
      this.labelFontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: labelColor,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ));
  }
}
