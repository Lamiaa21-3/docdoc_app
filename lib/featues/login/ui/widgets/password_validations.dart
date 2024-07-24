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
    return  Column(

      children: [
        buildValidationRow(' at least 1 lowerCase letter',hasLowerCase,),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {


  }
}


