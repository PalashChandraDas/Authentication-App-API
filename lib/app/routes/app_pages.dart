import 'package:authentication_app/app/modules/auth/login/bindings/login_binding.dart';
import 'package:authentication_app/app/modules/auth/login/views/login_view.dart';
import 'package:authentication_app/app/modules/auth/signUp/bindings/signup_binding.dart';

import 'package:authentication_app/app/modules/home/bindings/home_binding.dart';
import 'package:authentication_app/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';
import 'package:authentication_app/app/modules/splashScreen/views/splash_screen_view.dart';

import '../modules/auth/signUp/views/sign_up_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';

// ignore_for_file: constant_identifier_names
part 'app_routes.dart';

class AppPages {
  AppPages._(); //private constructor

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routeList = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => SignUpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
