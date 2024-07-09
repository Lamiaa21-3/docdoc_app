import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color ? backGroungColor;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enableBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon, this.backGroungColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText?? false,
      style:inputTextStyle?? StylesManager.font14DartBlueMedium,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        isDense: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorManager.mainBlue,
            width: 1.3,
          ),
        ),
        enabledBorder:enableBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorManager.lighterGrey,
            width: 1.3,
          ),
        ),
        hintStyle:hintStyle?? StylesManager.font14LightGrayRegular,
        fillColor:  backGroungColor?? ColorManager.moreLightGray,
        filled: true,
      ),
    );
  }
}
