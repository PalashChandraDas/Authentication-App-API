// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:authentication_app/app/modules/auth/signUp/controllers/sign_up_controller.dart';
import 'package:authentication_app/utils/custom_string.dart';
import 'package:authentication_app/widgets/max_gap_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../widgets/custom_text.dart';
import '../../../../../widgets/min_gap_widget.dart';
import '../../widgets/input_fields.dart';
import '../../widgets/submit_button.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.w),
            child: Center(
              child: Column(
                children: [
                  CustomText(text: CustomString.signupNow, fontSize: 25.sp,),
                  MaxGapWidget(),
                  InputTextFieldWidget(controller: controller.nameController, labelText: CustomString.nameLabelText),
                  MinGapWidget(),
                  InputTextFieldWidget(controller: controller.emailController, labelText: CustomString.emailLabelText),
                  MinGapWidget(),
                  InputTextFieldWidget(controller: controller.passwordController, labelText: CustomString.passwordLabelText),
                  MaxGapWidget(),
                  SubmitButton(
                    onPressed: () {
                      controller.signUp();
                    } ,
                    title: CustomString.signupButtonTitle,
                  ),

                  MinGapWidget(),

                  Row(
                    children: [
                      Text(CustomString.haveAccountTitle),
                      CupertinoButton(onPressed: () => Get.back(),
                          child: Text(CustomString.loginButtonTitle))
                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
