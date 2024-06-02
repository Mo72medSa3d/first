import 'package:burger/view/cart/cart_screen.dart';
import 'package:burger/view/home/home_screen.dart';
import 'package:burger/view/show_details/show_details.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      RoutesNames.home: (ctx) => HomeScreen(),
      RoutesNames.cart: (ctx) => CartScreen(),
      RoutesNames.showDetails: (ctx) => ShowDetailsScreen(),
    };
  }
}

class RoutesNames {
  static const String home = '/HOME';
  static const String cart = '/CART';
  static const String showDetails = '/SHOW_DETAILS';
}
