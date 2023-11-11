// ignore_for_file: prefer_const_constructors

import 'package:authentication_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const SubmitButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20.r), boxShadow: [
        BoxShadow(
            color: CustomColors.whiteColor.withOpacity(0.25),
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 1)
      ]),
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    side: BorderSide.none)),
            // backgroundColor: MaterialStateProperty.all<Color>(
            //   Colors.blueAccent,
            // )
          ),
          onPressed: onPressed,
          child: Text(title,
              style: TextStyle(
                fontSize: 24.sp,
                color: CustomColors.whiteColor,
                fontWeight: FontWeight.w600,
              ))),
    );
  }
}
