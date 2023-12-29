import 'package:doct_omar_yt/core/helpers/extensions.dart';
import 'package:doct_omar_yt/core/routing/routes.dart';
import 'package:doct_omar_yt/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        // tapTargetSize used to define the size of the button when it is pressed.
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // minimumSize used for the button height and width and padding all around the button.
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 60.h),
        ),
        // shape: MaterialStatePropertyAll(
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(16.r),
        //   ),
        // ),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
