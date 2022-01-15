import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
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
      // child: Column(
      //   children: [
      //     Row(
      //       children: [
      //         CardService(
      //             title: "Phone", subtitle: "Smart Phone", message: "Menu 1"),
      //         CardService(
      //             title: "Tablet", subtitle: "Smart Tablet", message: "Menu 2"),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     Row(
      //       children: [
      //         CardService(
      //             title: "Laptop", subtitle: "Portable", message: "Menu 3"),
      //         CardService(title: "PC", subtitle: "Desktop", message: "Menu 4"),
      //       ],
      //     ),
      //   ],
      // ),
      child: GridView.builder(
        itemCount: controller.list.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 5 / 2,
        ),
        itemBuilder: (context, index) {
          return ListContainer(
            title: controller.list[index]["title"].toString(),
            subtitle: controller.list[index]["subtitle"].toString(),
          );
        },
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 15),
                blurRadius: 10)
          ]),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: kPrimeryColor, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
