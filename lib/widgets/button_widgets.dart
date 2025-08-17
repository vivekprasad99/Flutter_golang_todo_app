import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;

  const ButtonWidgets({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 24, color: textColor)),
      ),
    );
  }
}
