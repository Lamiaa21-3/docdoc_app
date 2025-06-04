

import 'package:doc_advanced/core/helper/spacing.dart';
import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/featues/home/widgets/doctors_blue_container.dart';
import 'package:doc_advanced/featues/home/widgets/doctors_speciality_see_all.dart';
import 'package:doc_advanced/featues/home/widgets/home_top_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white ,
    body: SafeArea(
      child:  Container(
        margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
        width:  double.infinity,
        child:  Column(
          children: [
            const HomeTopAppbar(),
            const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              // const SpecializationsBlocBuilder(),
              // verticalSpace(8),
              // const DoctorsBlocBuilder(),
          ],
        ),
      ),
    ),
    );
  }
}
