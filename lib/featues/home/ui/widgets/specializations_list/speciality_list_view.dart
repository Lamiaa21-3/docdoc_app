import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_response_model.dart';
import 'speciality_list_view_item.dart';

class SpecialityListView extends StatelessWidget {
  final List<SpecializationsData?>? specializationDataList;
   SpecialityListView(
      {super.key, required this.specializationDataList});

  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // setState(() {
              //   selectedSpecializationIndex = index;
              // });
              // context.read<HomeCubit>().getDoctorsList(
              //   specializationId: widget.specializationDataList[index]?.id,
              // );
            },
            child: SpecialityListViewItem(
              specializationsData: specializationDataList?[index],
              itemIndex: index,

            ),
          );
        },
      ),
    );
  }
}