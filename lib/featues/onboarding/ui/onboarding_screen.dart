import 'package:doc_advanced/core/theming/styles.dart';
import 'package:doc_advanced/featues/onboarding/ui/widgets/custom_logo_text.dart';
import 'package:doc_advanced/featues/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:doc_advanced/featues/onboarding/ui/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                LogoAndName(),
                DoctorImageAndText(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 5),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: StylesManager.font14GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                ),
                GetStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
