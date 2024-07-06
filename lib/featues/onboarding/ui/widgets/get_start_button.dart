import 'package:doc_advanced/core/helper/extensions.dart';
import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.0,right: 20,top: 10),
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style:  ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(
            Size(double.infinity, 50),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          'Get Started ',
          style: StylesManager.font16White500,
        ),
      ),
    );
  }
}
