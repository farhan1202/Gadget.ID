import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/modules/main/favorite/views/favorite_view.dart';
import 'package:gadgetid_app/app/modules/main/landing/views/landing_view.dart';
import 'package:gadgetid_app/app/modules/main/setting/views/setting_view.dart';
import 'package:gadgetid_app/app/modules/main/user/views/user_view.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final screenIndex = 0.obs;
  final flag = 0.obs;

  final items = [
    Icon(CupertinoIcons.home),
    Icon(CupertinoIcons.star),
    Icon(CupertinoIcons.person),
    Icon(CupertinoIcons.gear),
  ];

  final screen = [
    LandingView(),
    FavoriteView(),
    UserView(),
    SettingView(),
  ];

  final list = [
    {"title": "Phone", "subtitle": "Smart Phone", "message": "Data 1"},
    {"title": "Tablet", "subtitle": "Smart Tablet", "message": "Data 2"},
    {"title": "Laptop", "subtitle": "Portable Desktop", "message": "Data 3"},
    {"title": "PC", "subtitle": "Desktop", "message": "Data 4"},
  ];

  // final screen = [HomePages(), FavoritePages(), UserPages(), SettingPages()];

  final navigationKey = GlobalKey<CurvedNavigationBarState>();
}
