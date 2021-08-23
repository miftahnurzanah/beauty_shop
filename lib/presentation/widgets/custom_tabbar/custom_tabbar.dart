import 'package:beauty_shop/common/layouts.dart';
import 'package:beauty_shop/presentation/widgets/custom_buttons/custom_buttons.dart';
import 'package:flutter/material.dart';

class CustomTabbar extends StatefulWidget {
  final List<String> data;
  const CustomTabbar({Key? key, required this.data}) : super(key: key);

  @override
  _CustomTabbarState createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  bool isActived = true;
  int indexActive = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: LayoutConstants(context).getActualWidth() - 60,
        height: 45,
        child: ListView.builder(
          itemCount: widget.data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(right: 10),
            child: CustomButtons(
              titleButton: widget.data[index],
              customWidth: 150,
              customHeight: 30,
              colorButton: isActived && index == indexActive
                  ? Colors.black
                  : Colors.white,
              onTapButton: () {
                setState(() {
                  isActived = true;
                  indexActive = index;
                });
              },
            ),
          ),
        ));
  }
}
