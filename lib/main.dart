import 'package:flutter/material.dart';
import 'package:gadgetid_app/app/data/colors_constants.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  GetStorage().writeIfNull("isOnboard", false);
  runApp(const MyApp());
}

bool isOnboard = false;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    isOnboard = GetStorage().read("isOnboard");
    return GetMaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimeryColor,
            elevation: 0,
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      title: "Gadget.ID",
      initialRoute: (isOnboard == false) ? AppPages.INITIAL : Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
