import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/styles.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('asset/svgs/docdoc_logo.svg'),
        SizedBox(width: 10.w,),
        Text(
          'DocDoc',
          style: StylesManager.font30Black700Weight,
        ),
      ],
    );
  }
}
