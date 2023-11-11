import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  onInit() {
    super.onInit();
    goHome();
  }

  goHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamedUntil(Routes.LOGIN, (route) => false);
  }
}
