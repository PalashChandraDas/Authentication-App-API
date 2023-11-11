import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/custom_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
        this.color = CustomColors.blackColor,
        required this.text,
        this.fontSize = 0,
        this.textOverflow = TextOverflow.ellipsis,
        this.textAlign = TextAlign.start,
        this.wordWrap = true,
        this.maxLines = 1,
        this.fontWeight = FontWeight.w500});
  final bool wordWrap;
  final int maxLines;
  final Color? color;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextOverflow textOverflow;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      softWrap: wordWrap,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: fontSize == 0 ? 14.sp : fontSize.sp,
          fontWeight: fontWeight),
    );
  }
}
