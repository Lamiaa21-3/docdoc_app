import 'package:doc_advanced/core/theming/styles.dart';
import 'package:doc_advanced/core/widgets/custom_button.dart';
import 'package:doc_advanced/featues/login/ui/widgets/terms_resh_text.dart';
import 'package:flutter/cupertino.dart';
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
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(isObscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                        verticalSpace(26),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'forget Password ?',
                            style: StylesManager.font16BlueRegular,
                          ),
                        ),
                        verticalSpace(40),
                        const CustomButton(
                          text: 'Login ',
                          padding: EdgeInsets.only(
                            left: 5.0,
                            right: 5,
                          ),
                        ),
                        verticalSpace(16),
                        TermsRichText(),

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
