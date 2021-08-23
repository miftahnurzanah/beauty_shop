import 'package:beauty_shop/common/assets_constants.dart';
import 'package:beauty_shop/presentation/journey/home/homepage_constants.dart';
import 'package:beauty_shop/presentation/widgets/custom_buttons/custom_buttons.dart';
import 'package:beauty_shop/presentation/widgets/custom_card/custom_card.dart';
import 'package:beauty_shop/presentation/widgets/custom_tabbar/custom_tabbar.dart';
import 'package:flutter/material.dart';

class HomepageContent extends StatefulWidget {
  const HomepageContent({Key? key}) : super(key: key);

  @override
  _HomepageContentState createState() => _HomepageContentState();
}

class _HomepageContentState extends State<HomepageContent> {
  List<String> categories = [
    'Trending Now',
    'New Arival',
    'Woman',
    'Man',
    'Kids'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            child: Stack(
              children: [
                Text(
                  HomepageConstants.findYours,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 72, top: 44),
                  child: Image.asset(
                    IconsConstants.curved,
                    width: 80,
                    height: 40,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 33),
                  child: Text.rich(
                    TextSpan(
                      text: HomepageConstants.match,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: HomepageConstants.style,
                          style: TextStyle(
                              // decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomTabbar(
            data: categories,
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  CustomCard(
                    imageName: ImageConstants.shirt1,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt2,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt3,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt4,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt5,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt6,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: ImageConstants.shirt7,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: true,
                  ),
                  CustomCard(
                    imageName: IconsConstants.love,
                    productName: 'Long Dress Flowers new arruval',
                    isShowDescription: false,
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
