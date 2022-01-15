import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';
import 'widgets/button_def.dart';
import 'widgets/input_field.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.25,
                  alignment: Alignment.center,
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
                        Inputfield(hint: "Email", iconD: Icons.person),
                        Inputfield(hint: "Username", iconD: Icons.person),
                        Inputfield(
                            hint: "Password",
                            iconD: Icons.lock,
                            passType: true),
                        Inputfield(
                          hint: "Name",
                          iconD: Icons.contact_mail,
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
                            Text("Have an Account?"),
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text("Sign In!"))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
