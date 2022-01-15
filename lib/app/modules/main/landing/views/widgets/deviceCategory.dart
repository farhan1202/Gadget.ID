import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'package:gadgetid_app/app/modules/main/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class DeviceCategory extends GetView<HomeController> {
  const DeviceCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: controller.list.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 5 / 2,
        ),
        padding: EdgeInsets.only(bottom: 15),
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
