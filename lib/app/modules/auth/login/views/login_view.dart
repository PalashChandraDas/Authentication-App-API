import 'package:authentication_app/app/routes/app_pages.dart';
import 'package:authentication_app/utils/custom_string.dart';
import 'package:authentication_app/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/max_gap_widget.dart';
import '../../../../../widgets/min_gap_widget.dart';
import '../../widgets/input_fields.dart';
import '../../widgets/submit_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30.h),
          child: Column(
            children: [
              CustomText(text: CustomString.loginNow, fontSize: 25.sp,),
              const MaxGapWidget(),
              InputTextFieldWidget(controller: controller.emailController, labelText:CustomString.emailLabelText),
              const MinGapWidget(),
              InputTextFieldWidget(controller: controller.passwordController, labelText: CustomString.passwordLabelText),
              const MaxGapWidget(),
              SubmitButton(
                onPressed: (){
                  controller.loginFun();
                },
                title: CustomString.loginButtonTitle,
              ),
              const MinGapWidget(),
              Row(
                children: [
                  const Text(CustomString.noAccountTitle),
                  CupertinoButton(onPressed: () => Get.toNamed(Routes.SIGN_UP),
                      child: const Text(CustomString.signupButtonTitle))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
