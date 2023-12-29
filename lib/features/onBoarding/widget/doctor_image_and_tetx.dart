import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/doc_background_logo.svg'),
        Container(
          //The decoration to paint in front of the [child].
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              //stops used for the gradient color animation in the decoration (0.0 - 1.0).
              stops: const [0.2, 0.5],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30.h,
          left: 30.w,
          right: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            textAlign: TextAlign.center,
            // I used .copyWith to change somthing in the style not exist in font32bold function in TextStyles
            // so if you want to add somthing in the style use copyWith
            style: TextStyles.font32bold.copyWith(height: 1.8.h),
          ),
        ),
      ],
    );
  }
}
