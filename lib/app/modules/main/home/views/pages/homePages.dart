import 'package:flutter/material.dart';

import 'widget/deviceCategory.dart';
import 'widget/headerHome.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
    ));
  }
}
