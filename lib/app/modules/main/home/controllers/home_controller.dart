import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final screenIndex = 0.obs;

  final PageController pageController = PageController(initialPage: 0);

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
}
