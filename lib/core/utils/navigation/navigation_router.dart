import 'package:flutter/material.dart';
import 'package:goapitest/screens/product_detail_page/view/product_detail_page.dart';
import 'package:goapitest/screens/products/models/product_model.dart';
import 'package:goapitest/screens/products/view/products_page.dart';

import '../../../screens/home/view/home_page.dart';
import '../../../screens/not_found_page/not_found_page.dart';
import 'routers.dart';

final class NavigationRouter {
  NavigationRouter._init();
  static final NavigationRouter _instance = NavigationRouter._init();
  static NavigationRouter get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Home
      case RoutersConstants.home:
        return normalNavigate(const HomePage(), RoutersConstants.home);

      case RoutersConstants.productDetail:
        return normalNavigate(
            ProductDetailPage(
              productModel: settings.arguments as ProductModel,
            ),
            RoutersConstants.productDetail);
      case RoutersConstants.products:
        return normalNavigate(const ProductsPage(), RoutersConstants.products);

      default:
        return normalNavigate(const NotFoundPage(), RoutersConstants.notFoundPage);
    }
  }
  MaterialPageRoute<dynamic> normalNavigate(Widget widget, String pageName, {Object? data}) {
    return MaterialPageRoute(builder: (context) => widget, settings: RouteSettings(name: pageName, arguments: data));
  }
}
