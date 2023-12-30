import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class TermsAndCondistions extends StatelessWidget {
  const TermsAndCondistions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By continuing you agree to our ',
              style: TextStyles.font14GreyRegular),
          TextSpan(
              text: 'Terms & Conditions', style: TextStyles.font16DarkMedium),
          TextSpan(
              text: ' and ',
              style: TextStyles.font14GreyRegular.copyWith(height: 1.5)),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font16DarkMedium,
          )
        ]));
  }
}
