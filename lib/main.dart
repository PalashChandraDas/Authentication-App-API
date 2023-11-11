import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:authentication_app/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:authentication_app/app/routes/app_pages.dart';
import 'package:authentication_app/utils/custom_string.dart';


import 'data/theme/theme_data.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //dynamic height and width
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (_, child) => GetMaterialApp(
        title: CustomString.appName,
        debugShowCheckedModeBanner: false,
        theme: themeData,
        initialBinding: SplashScreenBinding(),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routeList,
        // home: SignUpView(),
      ),
    );
  }
}
