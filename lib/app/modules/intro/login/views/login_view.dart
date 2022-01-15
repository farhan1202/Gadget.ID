import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'package:gadgetid_app/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'widgets/button_def.dart';
import 'widgets/input_field.dart';

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
            // height: size.height,
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
                        textAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonDef(size: size),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account?"),
                          TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.REGISTER);
                              },
                              child: Text("Sign Up!"))
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
