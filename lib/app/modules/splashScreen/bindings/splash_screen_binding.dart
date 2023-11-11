import 'package:get/get.dart';
import 'package:authentication_app/app/modules/splashScreen/controllers/splash_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
