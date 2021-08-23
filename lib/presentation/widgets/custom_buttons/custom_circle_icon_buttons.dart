import 'package:flutter/material.dart';

class CustomCircleIconButtons extends StatelessWidget {
  final String iconButton;
  final Function onTapButton;
  final double customSize;
  final Color colorButton, colorIcon;
  final bool isShowBorder;

  const CustomCircleIconButtons(
      {Key? key,
      required this.iconButton,
      required this.onTapButton,
      this.customSize: 35,
      this.colorButton: Colors.white,
      this.colorIcon: Colors.black,
      this.isShowBorder: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customSize,
      height: customSize,
      decoration: BoxDecoration(
          color: colorButton,
          shape: BoxShape.circle,
          border: Border.all(
              color: isShowBorder ? Colors.grey : colorButton, width: 1)),
      child: IconButton(
        onPressed: () => onTapButton(),
        icon: Image.asset(
          iconButton,
          color: colorIcon,
        ),
      ),
    );
  }
}
