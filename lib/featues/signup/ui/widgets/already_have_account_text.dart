


import 'package:doc_advanced/core/helper/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: StylesManager.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: StylesManager.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}