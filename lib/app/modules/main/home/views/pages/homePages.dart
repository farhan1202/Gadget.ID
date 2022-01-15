import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/modules/main/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import 'widget/deviceCategory.dart';
import 'widget/headerHome.dart';

class HomePages extends GetView<HomeController> {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          HeaderHome(size: size),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Device Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          DeviceCategory()
        ],
      )),
    );
  }
}
