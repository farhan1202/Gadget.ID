import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gadgetid_app/app/modules/main/home/views/pages/favPages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/homePages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/settingPages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/userPages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final screenIndex = 0.obs;
  final flag = 0.obs;

  final items = [
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];

  final list = [
    {"title": "Phone", "subtitle": "Smart Phone", "message": "Data 1"},
    {"title": "Tablet", "subtitle": "Smart Tablet", "message": "Data 2"},
    {"title": "Laptop", "subtitle": "Portable Desktop", "message": "Data 3"},
    {"title": "PC", "subtitle": "Desktop", "message": "Data 4"},
  ];

  final screen = [HomePages(), FavoritePages(), UserPages(), SettingPages()];

  final PageController pageController = PageController(initialPage: 0);

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
}
