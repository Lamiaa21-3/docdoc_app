

import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? function;
  final EdgeInsets ? padding;
  const CustomButton({super.key, required this.text, this.function, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding?? const EdgeInsets.only(left: 20.0,right: 20,top: 10),
      child: TextButton(
        onPressed:function,
        style:  ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.blue),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const WidgetStatePropertyAll(
            Size(double.infinity, 50),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          text,
          style: StylesManager.font16White500,
        ),

      ),
    );
  }
}
