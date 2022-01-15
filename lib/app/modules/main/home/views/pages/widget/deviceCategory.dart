import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/modules/main/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import 'cardCategory.dart';

class DeviceCategory extends GetView<HomeController> {
  const DeviceCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              CardService(
                  title: "Phone", subtitle: "Smart Phone", message: "Menu 1"),
              CardService(
                  title: "Tablet", subtitle: "Smart Tablet", message: "Menu 2"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CardService(
                  title: "Laptop", subtitle: "Portable", message: "Menu 3"),
              CardService(title: "PC", subtitle: "Desktop", message: "Menu 4"),
            ],
          ),
        ],
      ),
      // child: GridView.builder(
      //   itemCount: controller.list.length,
      //   shrinkWrap: true,
      //   physics: NeverScrollableScrollPhysics(),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     mainAxisSpacing: 20,
      //     crossAxisCount: 2,
      //     childAspectRatio: 5 / 1.8,
      //   ),
      //   itemBuilder: (context, index) {
      //     return CardService(
      //       title: controller.list[index]['title'].toString(),
      //       subtitle: controller.list[index]['subtitle'].toString(),
      //       message: controller.list[index]['message'].toString(),
      //     );
      //   },
      // ),
    );
  }
}
