

import 'package:doc_advanced/core/theming/styles.dart';
import 'package:doc_advanced/featues/signup/ui/widgets/already_have_account_text.dart';
import 'package:doc_advanced/featues/signup/ui/widgets/sign_up_bloc_listener.dart';
import 'package:doc_advanced/featues/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/widgets/custom_button.dart';
import '../../login/ui/widgets/terms_resh_text.dart';
import '../logic/sign_up_cubit.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: StylesManager.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: StylesManager.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    CustomButton(text:  "Create Account",
                      function:(){
                        validateThenDoSignup(context);
                      } ,

                    ),
                    verticalSpace(16),
                    const TermsRichText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}









//
// buttonText: "Create Account",
// textStyle: StylesManager.font16WhiteSemiBold,
// onPressed: () {
// validateThenDoSignup(context);
// },