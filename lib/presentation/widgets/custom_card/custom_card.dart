import 'package:beauty_shop/common/assets_constants.dart';
import 'package:beauty_shop/common/routes/route_name.dart';
import 'package:beauty_shop/presentation/widgets/custom_buttons/custom_circle_icon_buttons.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String imageName, productName, price;
  final double width;
  final bool isShowBackButton, isShowLikeButton, isShowDescription;

  const CustomCard(
      {Key? key,
      required this.imageName,
      this.width: 170,
      this.isShowBackButton: false,
      this.isShowLikeButton: true,
      this.isShowDescription: false,
      this.price: '-',
      this.productName: '-'})
      : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    Image image = Image.asset(
      widget.imageName,
      width: widget.width,
      fit: BoxFit.fitWidth,
    );

    return Container(
      height: image.height,
      width: widget.width,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RouteNames.product);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(16), child: image),
                if (widget.isShowLikeButton)
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CustomCircleIconButtons(
                        iconButton: IconsConstants.loveOutlined,
                        onTapButton: () {}),
                  )
              ],
            ),
            if (widget.isShowDescription)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.productName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
