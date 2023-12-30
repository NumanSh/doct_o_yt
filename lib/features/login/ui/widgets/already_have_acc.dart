import 'package:doct_omar_yt/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAcc extends StatelessWidget {
  const AlreadyHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    //RichText is used to display text with different styles and spans.
    return RichText(
      textAlign: TextAlign.center,
      //TextSpan is used to create text with different styles and spans.
      text: TextSpan(children: [
        TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font14GreyRegular),
        TextSpan(text: 'Sign Up', style: TextStyles.font14BlueSemiBold),
      ]),
    );
  }
}
