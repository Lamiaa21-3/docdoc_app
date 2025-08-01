import 'package:doc_advanced/featues/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doc_advanced/featues/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:doc_advanced/featues/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:doc_advanced/featues/home/ui/widgets/home_top_appbar.dart';
import 'package:doc_advanced/featues/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_speciality_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorSpecialityListView(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
              verticalSpace(8),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
