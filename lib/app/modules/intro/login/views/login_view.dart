import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        // appBar: AppBar(
        //   title: Image.asset(
        //     "assets/images/logo1.png",
        //     width: size.width * 0.3,
        //   ),
        //   centerTitle: true,
        //   backgroundColor: kPrimeryColor,
        // ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.25,
                  alignment: Alignment.center,
                  // color: kPrimeryColor,
                  child: Image.asset(
                    "assets/images/logo1.png",
                    width: size.width * 0.75,
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Inputfield(
                        hint: "Username",
                        iconD: Icons.person,
                      ),
                      Inputfield(
                        hint: "Password",
                        iconD: Icons.lock,
                        passType: true,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}

class Inputfield extends StatelessWidget {
  const Inputfield({
    Key? key,
    required this.hint,
    this.passType = false,
    required this.iconD,
  }) : super(key: key);

  final String hint;
  final bool passType;
  final IconData iconD;
  // final TextEditingController txtC;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 15),
                blurRadius: 15)
          ]),
      child: Row(
        children: [
          Icon(iconD, color: kPrimeryColor),
          SizedBox(width: 15),
          Expanded(
              child: TextField(
            obscureText: passType,
            // controller: txtC,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: kPrimeryColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ))
        ],
      ),
    );
  }
}
