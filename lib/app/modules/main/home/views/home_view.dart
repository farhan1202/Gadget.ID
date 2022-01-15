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
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo1.png",
          width: size.width * 0.3,
        ),
        // backgroundColor: kPrimeryColor,
      ),
      body: SafeArea(
        child: Obx(() => IndexedStack(
              index: controller.screenIndex.value,
              children: controller.screen,
            )),
      ),
      // Obx(() => screen[controller.screenIndex.value]),
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        items: controller.items,
        backgroundColor: Colors.transparent,
        height: 60,
        index: controller.screenIndex.value,
        animationCurve: Curves.easeInOut,
        onTap: (value) {
          controller.screenIndex.value = value;
        },
        animationDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
