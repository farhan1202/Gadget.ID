import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'widgets/deviceCategory.dart';

import 'package:get/get.dart';

import '../controllers/landing_controller.dart';
import 'widgets/LandingHeader.dart';

class LandingView extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            LandingHeader(size: size),
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
      ),
    );
  }
}
