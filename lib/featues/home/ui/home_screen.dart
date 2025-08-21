import 'package:doc_advanced/featues/home/logic/home_cubit.dart';
import 'package:doc_advanced/featues/home/logic/home_state.dart';
import 'package:doc_advanced/featues/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:doc_advanced/featues/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:doc_advanced/featues/home/ui/widgets/home_top_appbar.dart';
import 'package:doc_advanced/featues/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'package:doc_advanced/featues/home/ui/widgets/specializations_list/speciality_list_view.dart';

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

              // BlocBuilder<HomeCubit, HomeState>(
              //   buildWhen: (previous, current) =>
              //       current is SpecializationLoading ||
              //       current is SpecializationError ||
              //       current is SpecializationSuccess,
              //   builder: (context, state) {
              //     return state.maybeWhen(
              //         specializationLoading: () => setupLoading(),
              //         specializationError: (error) =>setupError(),
              //         specializationSuccess: (specializationResponseModel) {
              //           var specializationList = specializationResponseModel;
              //         return setupSuccess(specializationList);
              //         },
              //         orElse: () {
              //           return const SizedBox.shrink();
              //         });
              //   },
              // ),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget setupLoading() {
    return const CircularProgressIndicator();
  }
  Widget setupError(){
    return const SizedBox.shrink();
  }
  Widget setupSuccess(specializationList){
    return Expanded(
      child: Column(
        children: [
          SpecialityListView(
              specializationDataList: specializationList!),
          verticalSpace(8),
          DoctorsListView(
            doctorsList: specializationList[0]?.doctorsList,
          ),
        ],
      ),
    );
  }
}
