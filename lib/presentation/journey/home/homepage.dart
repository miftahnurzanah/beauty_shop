import 'package:beauty_shop/common/assets_constants.dart';
import 'package:beauty_shop/common/layouts.dart';
import 'package:beauty_shop/presentation/journey/home/homepage_content.dart';
import 'package:beauty_shop/presentation/widgets/custom_buttons/custom_circle_icon_buttons.dart';
import 'package:beauty_shop/presentation/widgets/custom_icons/custom_icons.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexActive = 0;

  List menu = [
    IconsConstants.home,
    IconsConstants.menu,
    IconsConstants.cart,
    IconsConstants.settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 60,
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          child: CustomIcons(iconName: IconsConstants.menu),
        ),
        backgroundColor: Colors.white,
        actions: [
          CustomIcons(
            iconName: IconsConstants.search,
            height: 20,
            width: 20,
          ),
          CustomIcons(iconName: IconsConstants.scanQr),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Container(
            // color: Colors.blue,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Colors.white),
            padding: EdgeInsets.all(20),
            width: LayoutConstants(context).getActualWidth(),
            height: LayoutConstants(context).getActualHeight() / 1.1,
            child: HomepageContent()),
      ),
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: menuBar(),
        ),
      ),
    );
  }

  List<Widget> menuBar() {
    return List.generate(
      menu.length,
      (index) => CustomCircleIconButtons(
        iconButton: menu[index],
        colorButton: indexActive == index ? Colors.orange : Colors.transparent,
        customSize: 50,
        colorIcon: Colors.white,
        onTapButton: () {
          setState(() {
            indexActive = index;
          });
        },
      ),
    );
  }
}
