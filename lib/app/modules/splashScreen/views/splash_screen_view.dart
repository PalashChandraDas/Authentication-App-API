import 'package:authentication_app/app/modules/splashScreen/controllers/splash_controller.dart';
import 'package:authentication_app/utils/custom_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends GetView<SplashController> {
  const SplashScreenView({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      body: Center(child: Text(CustomString.splashLoading),),
    );
  }
}
