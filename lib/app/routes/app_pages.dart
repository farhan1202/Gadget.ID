import 'package:get/get.dart';

import '../modules/intro/login/bindings/login_binding.dart';
import '../modules/intro/login/views/login_view.dart';
import '../modules/intro/onboard/bindings/onboard_binding.dart';
import '../modules/intro/onboard/views/onboard_view.dart';
import '../modules/intro/register/bindings/register_binding.dart';
import '../modules/intro/register/views/register_view.dart';
import '../modules/main/favorite/bindings/favorite_binding.dart';
import '../modules/main/favorite/views/favorite_view.dart';
import '../modules/main/home/bindings/home_binding.dart';
import '../modules/main/home/views/home_view.dart';
import '../modules/main/landing/bindings/landing_binding.dart';
import '../modules/main/landing/views/landing_view.dart';
import '../modules/main/setting/bindings/setting_binding.dart';
import '../modules/main/setting/views/setting_view.dart';
import '../modules/main/user/bindings/user_binding.dart';
import '../modules/main/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARD;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARD,
      page: () => OnboardView(),
      binding: OnboardBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
  ];
}
