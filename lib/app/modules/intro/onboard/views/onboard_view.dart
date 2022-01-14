import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';
import 'package:gadgetid_app/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'So Many Gadget',
            body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            image: Image.asset(
              "assets/images/onboard1.jpg",
              height: size.height * 0.5,
            ),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Featured Gadget',
            body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            image: Image.asset(
              "assets/images/onboard2.jpg",
              height: size.height * 0.5,
            ),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Design Gadget',
            body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            image: Image.asset(
              "assets/images/onboard3.jpg",
              height: size.height * 0.5,
            ),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text("Done", style: TextStyle(fontWeight: FontWeight.bold)),
        onDone: () {
          onDone();
        },
        showSkipButton: true,
        skip: Text("Skip"),
        onSkip: () {
          onDone();
        },
        showNextButton: true,
        next: Text("Next"),
        dotsDecorator: getDotDecoration(),
        globalBackgroundColor: Colors.white,
      ),
    ));
  }
}

PageDecoration getPageDecoration() => PageDecoration(
      bodyAlignment: Alignment.center,
      imageAlignment: Alignment.bottomCenter,
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 20),
      descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(24),
      pageColor: Colors.white,
    );

DotsDecorator getDotDecoration() => DotsDecorator(
      color: Color(0xFFBDBDBD),
      activeColor: kPrimeryColor,
      size: Size(10, 10),
      activeSize: Size(22, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );

void onDone() {
  Get.offAllNamed(Routes.LOGIN);
  GetStorage().write("isOnboard", true);
}
