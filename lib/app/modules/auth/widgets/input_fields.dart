// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String validatorMsg;

  const InputTextFieldWidget(
      {super.key,
      required this.controller,
      required this.labelText,
      this.validatorMsg = "Required"});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(46.r)),
            labelText: labelText,
            contentPadding: EdgeInsets.all(15.w),
            focusColor: Colors.white60),
        validator: (value) {
          if (value!.isEmpty || value == "") {
            return validatorMsg;
          }
          return null;
        },
      ),
    );
  }
}
