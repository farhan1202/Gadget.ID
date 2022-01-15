import 'package:flutter/material.dart';

import 'cardCategory.dart';

class DeviceCategory extends StatelessWidget {
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
    );
  }
}
