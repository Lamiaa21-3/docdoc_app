import 'package:doc_advanced/core/theming/styles.dart';
import 'package:doc_advanced/core/widgets/custom_button.dart';
import 'package:doc_advanced/featues/login/logic/login_cubit.dart';
import 'package:doc_advanced/featues/login/ui/widgets/email_and_password.dart';
import 'package:doc_advanced/featues/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc_advanced/featues/login/ui/widgets/signup_text_speech.dart';
import 'package:doc_advanced/featues/login/ui/widgets/terms_resh_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../data/model/login_request_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'forget Password ?',
                        style: StylesManager.font16BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    CustomButton(
                      function: validateAndThenDoLogin(context),
                      text: 'Login ',
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                      ),
                    ),
                    verticalSpace(16),
                    const TermsRichText(),
                    const SignupRichText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  validateAndThenDoLogin(BuildContext context) {
    final formState = context.read<LoginCubit>().formKey.currentState;
    if (formState?.validate()??true) {
      context.read<LoginCubit>().emitLoginState(LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}