import 'package:beauty_shop/common/routes/route_name.dart';
import 'package:beauty_shop/presentation/journey/home/homepage.dart';
import 'package:beauty_shop/presentation/journey/products/product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
            settings: RouteSettings(name: RouteNames.home),
            builder: (context) => _buildHomeScreen());
      case RouteNames.product:
        return MaterialPageRoute(
            settings: RouteSettings(name: RouteNames.product),
            builder: (context) => _buildProductDetailPage());
      default:
        return MaterialPageRoute(
            settings: RouteSettings(name: RouteNames.home),
            builder: (context) => _buildHomeScreen());
    }
  }

  static Widget _buildHomeScreen() {
    return Homepage();
  }

  static Widget _buildProductDetailPage() {
    return ProductDetailPage();
  }
}
