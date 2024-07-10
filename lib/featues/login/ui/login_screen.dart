import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 30.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcom Back',
                  style: StylesManager.font24BlueBlod,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: StylesManager.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(
                          hintText: 'Email',
                        ),
                        verticalSpace(18),
                        AppTextFormField(
                          hintText: 'Email',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {

                                  isObscureText=!isObscureText;
                                });
                              },
                              child: Icon(isObscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
