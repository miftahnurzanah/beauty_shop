import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String titleButton;
  final Function onTapButton;
  final double customHeight, customWidth, customFontSize;
  final Color colorButton, textColor;

  const CustomButtons(
      {Key? key,
      required this.titleButton,
      required this.onTapButton,
      this.customHeight: 56,
      this.customWidth: 350,
      this.colorButton: Colors.orange,
      this.textColor: Colors.white,
      this.customFontSize: 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: customWidth,
      height: customHeight,
      decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: colorButton == Colors.white ? Colors.grey : colorButton,
              width: 1)),
      child: TextButton(
        child: Text(
          titleButton,
          style: TextStyle(
              fontSize: customFontSize,
              color: colorButton == Colors.white ? Colors.black : textColor),
        ),
        onPressed: () => onTapButton(),
      ),
    );
  }
}
