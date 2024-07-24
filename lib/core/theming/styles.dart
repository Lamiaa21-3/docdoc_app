import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StylesManager {
  static TextStyle font30Black700Weight = TextStyle(
    fontSize: 30.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32BlueBlod = TextStyle(
    fontSize: 32.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14DartBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14GrayRegular = const TextStyle(
    fontSize: 14,
    color: ColorManager.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16BlueRegular = const TextStyle(
  fontSize: 16,
  color: ColorManager.mainBlue,
  fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16White500 = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font24BlueBlod = TextStyle(
    fontSize: 24.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14LightGrayRegular = const TextStyle(
    fontSize: 14,
    color: ColorManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );
}
