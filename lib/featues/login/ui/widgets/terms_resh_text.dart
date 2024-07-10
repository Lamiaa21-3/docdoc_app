import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsRichText extends StatelessWidget {
  const TermsRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(

        children: [

          TextSpan(
            text: 'By logging, you agree to ou',
            style: StylesManager.font14GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: StylesManager.font14DartBlueMedium,
          ),
          TextSpan(
            text: 'and',
            style: StylesManager.font14GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'privacy policy',
            style: StylesManager.font14DartBlueMedium,
          ),
        ],
      ),
    );
  }
}
