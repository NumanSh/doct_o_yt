import 'package:doct_omar_yt/core/helpers/spacer.dart';
import 'package:doct_omar_yt/core/theme/colors.dart';
import 'package:doct_omar_yt/core/theme/styles.dart';
import 'package:doct_omar_yt/core/widget/app_text_button.dart';
import 'package:doct_omar_yt/core/widget/app_text_field.dart';
import 'package:doct_omar_yt/features/login/data/models/login_request_body.dart';
import 'package:doct_omar_yt/features/login/ui/widgets/already_have_acc.dart';
import 'package:doct_omar_yt/features/login/ui/widgets/email_and_password.dart';
import 'package:doct_omar_yt/features/login/ui/widgets/terms_and_condistions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/login_cubit.dart';
import 'widgets/login_bloc_listner.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24Bluebold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
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
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      buttonTextStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(16),
                    const TermsAndCondistions(),
                    verticalSpace(60),
                    const AlreadyHaveAcc(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
