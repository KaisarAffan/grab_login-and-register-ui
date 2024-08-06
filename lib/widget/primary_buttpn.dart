// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class primaryBtn extends StatelessWidget {
  final String textBtn;
  final Image appIcon;
  Color backgroundCl, textColor;
  double L, T, R, B;
  VoidCallback onPressed;

  primaryBtn({
    required this.textBtn,
    required this.appIcon,
    this.backgroundCl = Colors.white,
    this.textColor = Colors.black,
    this.L = 0,
    this.T = 0,
    this.R = 0,
    this.B = 0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      margin: EdgeInsets.fromLTRB(L, T, R, B),
      child: OutlinedButton.icon(
        icon: Padding(
          padding: const EdgeInsets.only(
              left: 33), // Adjust the left padding as needed
          child: SizedBox(
            width: 20.0,
            height: 20.0,
            child: appIcon,
          ),
        ),
        onPressed: onPressed,
        label: Container(
          padding: EdgeInsets.only(right: 33),
          alignment: Alignment.center,
          child: Text(
            textBtn,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: backgroundCl,
          foregroundColor: textColor,
          side: BorderSide.none, // Hide the border
        ),
      ),
    );
  }
}
