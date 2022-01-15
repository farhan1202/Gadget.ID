import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'package:gadgetid_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ButtonDef extends StatelessWidget {
  const ButtonDef({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 15,
          offset: Offset(0, 15),
        )
      ]),
      height: 54,
      child: RaisedButton(
        child: Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onPressed: () {
          Get.offNamed(Routes.HOME);
        },
        elevation: 0,
        color: kPrimeryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
