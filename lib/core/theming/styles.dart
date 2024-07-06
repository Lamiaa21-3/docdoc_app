

import 'package:doc_advanced/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StylesManager {
  static TextStyle font30Black700Weight = TextStyle(
    fontSize: 30.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static  TextStyle font32BlueBlod =  TextStyle(
    fontSize: 32.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle font14GrayRegular =  TextStyle(
    fontSize: 14,
    color: ColorManager.grey,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle font16White500 =  TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}