import 'package:doc_advanced/core/helper/spacing.dart';
import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumbers;
  final bool hasMiniLength;
  final bool hasSpecialCharacters;

  const PasswordValidations(
      {super.key,
      required this.hasUpperCase,
      required this.hasLowerCase,
      required this.hasNumbers,
      required this.hasMiniLength,
      required this.hasSpecialCharacters});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          ' at least 1 lowerCase letter',
          hasLowerCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          ' at least 1 uooerCase letter',
          hasUpperCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          ' at least 1 Number letter',
          hasNumbers,
        ),
        verticalSpace(2),
        buildValidationRow(
          ' at least 1 specialCharacters letter',
          hasSpecialCharacters,
        ),
        verticalSpace(2),
        buildValidationRow(
          ' at least 8 symbols letter',
          hasMiniLength,
        ),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorManager.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: StylesManager.font14DartBlueMedium.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorManager.grey : ColorManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
