// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? buttonColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  // VoidCallback used to define the function that will be called when the button is pressed
  final VoidCallback? onPressed;

  const AppTextButton({
    Key? key,
    this.borderRadius,
    this.buttonColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.buttonTextStyle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
            ),
          ),
          backgroundColor:
              MaterialStatePropertyAll(buttonColor ?? ColorsManager.mainBlue),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
                horizontal: horizontalPadding?.w ?? 12.w,
                vertical: verticalPadding?.h ?? 14.h),
          ),
          // fixedSize used for the button height and width and padding all around the button.
          fixedSize: MaterialStatePropertyAll(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 60.h),
          )),
      onPressed: onPressed,
      child: Text(
        buttonText!,
        style: buttonTextStyle,
      ),
    );
  }
}
