import 'package:doc_advanced/featues/login/logic/login_cubit.dart';
import 'package:doc_advanced/featues/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  // final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumbers = false;
  bool hasMiniLength = false;
  bool hasSpecialCharacters = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return ' please enter your email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return ' please enter your email';
              }
            },
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child:
                  Icon(isObscureText ? Icons.visibility : Icons.visibility_off),
            ),
          ),
          verticalSpace(26),
          PasswordValidations(
            hasUpperCase: hasUpperCase,
            hasLowerCase: hasLowerCase,
            hasNumbers: hasNumbers,
            hasMiniLength: hasMiniLength,
            hasSpecialCharacters: hasSpecialCharacters,
          ),
        ],
      ),
    );
  }
}
