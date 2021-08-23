import 'package:flutter/cupertino.dart';

class LayoutConstants {
  final BuildContext context;

  LayoutConstants(this.context);

  double getActualHeight() => MediaQuery.of(context).size.height;

  double getActualWidth() => MediaQuery.of(context).size.width;

  double getHalfWidth() => MediaQuery.of(context).size.width / 2;

  double getOneThirdWidth() => MediaQuery.of(context).size.width / 3;

  double getAquarterWidth() => MediaQuery.of(context).size.width / 4;
}
