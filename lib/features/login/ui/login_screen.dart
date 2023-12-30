import 'package:doct_omar_yt/core/helpers/spacer.dart';
import 'package:doct_omar_yt/core/theme/colors.dart';
import 'package:doct_omar_yt/core/theme/styles.dart';
import 'package:doct_omar_yt/core/widget/app_text_button.dart';
import 'package:doct_omar_yt/core/widget/app_text_field.dart';
import 'package:doct_omar_yt/features/login/ui/widgets/already_have_acc.dart';
import 'package:doct_omar_yt/features/login/ui/widgets/terms_and_condistions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  // toggle password visibility or not
  bool isOsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcom Back',
              style: TextStyles.font24Bluebold,
            ),
            verticalSpace(10),
            Text(
              "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpace(36),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const AppTextFormField(hintText: 'Email'),
                  verticalSpace(20),
                  AppTextFormField(
                    hintText: 'Password',
                    obscureText: isOsecure,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        // toggle password visibility or not when user click on the icon.
                        setState(() {
                          isOsecure = !isOsecure;
                        });
                      },
                      child: Icon(
                        isOsecure ? Icons.visibility_off : Icons.visibility,
                        color: ColorsManager.mainBlue,
                      ),
                    ),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font15BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {},
                    buttonTextStyle: TextStyles.font16WhiteSemiBold,
                  ),
                  verticalSpace(16),
                  const TermsAndCondistions(),
                  verticalSpace(60),
                  const AlreadyHaveAcc(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
