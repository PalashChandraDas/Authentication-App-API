import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/custom_colors.dart';
import 'custom_text.dart';

class KInputAuthTextField extends StatefulWidget {
  const KInputAuthTextField(
      {super.key,
      this.textEditingController,
      required this.title,
      required this.hintTitle,
      required this.isPassword,
      this.isMail = true,
      this.isMobile = false,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next});
  final TextEditingController? textEditingController;
  final String title;
  final String hintTitle;
  final bool isPassword;
  final bool isMail;
  final bool isMobile;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final dynamic validator;

  @override
  State<KInputAuthTextField> createState() => _KInputAuthTextFieldState();
}

class _KInputAuthTextFieldState extends State<KInputAuthTextField> {
  bool isPasswordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: widget.title,
            color: CustomColors.blackColor,
          ),
          10.verticalSpace,
          TextFormField(
            validator: widget.validator,
            controller: widget.textEditingController,
            obscureText: widget.isPassword == true ? isPasswordVisibility : false,
            keyboardType: widget.keyboardType,
            maxLines: 1,
            textAlign: TextAlign.left,
            textInputAction: widget.textInputAction,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.w, bottom: 20.w, top: 20.w),
                isDense: true,
                suffixIconColor: CustomColors.greyColor,
                hintText: widget.hintTitle,
                suffixIcon: (widget.isPassword == true)
                    ? IconButton(
                        focusNode: FocusNode(skipTraversal: true),
                        onPressed: () {
                          setState(() {
                            isPasswordVisibility = !isPasswordVisibility;
                          });
                        },
                        icon: (isPasswordVisibility != true)
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off))
                    : (widget.isMobile == true)
                        ? const Icon(Icons.call)
                        : (widget.isMail == true)
                            ? const Icon(Icons.mail)
                            : const Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.h),
                    borderSide:
                        BorderSide(color: CustomColors.greyColor, width: 3.h)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.h),
                    borderSide:
                        BorderSide(color: CustomColors.greyColor, width: 3.h)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.h),
                    borderSide: BorderSide(color: CustomColors.greyColor, width: 3.h)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.h),
                    borderSide:
                        BorderSide(color: CustomColors.warning, width: 3.h))),
          ),
        ],
      ),
    );
  }
}
