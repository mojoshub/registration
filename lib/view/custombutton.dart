// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:registration/configs/constants.dart';
import 'package:registration/view/customtext.dart';

class customButton extends StatelessWidget {
  final Color buttoncolor;
  final String buttonlabel;
  const customButton({
    super.key,
    required this.buttoncolor,
    required this.buttonlabel,
    required this.confirmpasswordController,
  });

  final TextEditingController confirmpasswordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: customtitleText(
        label: buttonlabel,
        labelColor: appWhiteColor,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: appgreenColor,
          elevation: 8,
          padding: const EdgeInsets.fromLTRB(155, 18, 155, 18)),
    );
  }
}
