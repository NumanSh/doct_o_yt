// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doct_omar_yt/core/theme/styles.dart';

import '../theme/colors.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.obscureText,
    this.suffixIcon,
    this.fillColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          labelText: hintText,
          fillColor: fillColor ?? ColorsManager.moreLighterGery,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          //to control the visual density of the input field.
          isDense: true,
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.mainBlue, width: 1.3.w),
                  borderRadius: BorderRadius.circular(16.r)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide:
                    BorderSide(color: ColorsManager.lighterGery, width: 1.3.w),
              ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          ),
          hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
          hintText: hintText,
          suffixIcon: suffixIcon),
      obscureText: obscureText ?? false,
      style: TextStyles.font16DarkMedium,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
