import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/styles.dart';

class DoctLogoAndName extends StatelessWidget {
  const DoctLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/doc_logo.svg'),
        SizedBox(
          width: 10.w,
        ),
        Text('Doct', style: TextStyles.font24BlackBold)
      ],
    );
  }
}
