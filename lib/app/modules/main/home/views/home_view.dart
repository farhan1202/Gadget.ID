import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/favPages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/homePages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/settingPages.dart';
import 'package:gadgetid_app/app/modules/main/home/views/pages/userPages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final items = [
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];

  final screen = [HomePages(), FavoritePages(), UserPages(), SettingPages()];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo1.png",
          width: size.width * 0.3,
        ),
        centerTitle: true,
        backgroundColor: kPrimeryColor,
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.screenIndex.value = value;
          controller.navigationKey.currentState!.setPage(value);
        },
        children: screen,
      ),
      // Obx(() => screen[controller.screenIndex.value]),
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        key: controller.navigationKey,
        items: items,
        backgroundColor: Colors.transparent,
        height: 60,
        index: controller.screenIndex.value,
        animationCurve: Curves.easeInOut,
        onTap: (value) {
          controller.pageController.jumpToPage(value);
        },
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
