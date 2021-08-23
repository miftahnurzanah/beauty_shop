import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final String iconName;
  final double height;
  final double width;
  final Color color;

  const CustomIcons(
      {Key? key,
      required this.iconName,
      this.height: 25,
      this.width: 25,
      this.color: Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        iconName,
        height: height,
        width: width,
        color: color,
      ),
    );
  }
}
