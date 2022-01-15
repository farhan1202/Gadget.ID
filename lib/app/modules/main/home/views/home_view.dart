import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
        elevation: 0,
        backgroundColor: kPrimeryColor,
      ),
      body: Container(
        height: size.height,
        child: PageView(
          controller: controller.pageController,
          onPageChanged: (value) async {
            controller.screenIndex.value = value;
            await Future.delayed(Duration(milliseconds: 300));
            controller.navigationKey.currentState!.setPage(value);
          },
          children: controller.screen,
        ),
      ),
      // Obx(() => screen[controller.screenIndex.value]),
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        key: controller.navigationKey,
        items: controller.items,
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
