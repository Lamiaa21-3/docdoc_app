



import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SignupRichText extends StatelessWidget {
  const SignupRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

        children: [

          TextSpan(
            text: 'Already have an account yet? ',
            style: StylesManager.font14DartBlueMedium,
          ),
          TextSpan(
            text: ' Sign Up ',
            style: StylesManager.font16BlueRegular,
          ),

        ],
      ),
    );
  }
}
