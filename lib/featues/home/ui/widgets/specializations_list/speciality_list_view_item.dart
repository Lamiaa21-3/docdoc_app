import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/color.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/specialization_response_model.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.mainBlue,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: ColorManager.mainBlue,
              child: SvgPicture.asset(
                'assets/svgs/general_speciality.svg',
                height: 42.h,
                width: 42.w,
              ),
            ),
          )
              : CircleAvatar(
            radius: 28,
            backgroundColor: ColorManager.mainBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: itemIndex == selectedIndex
                ? StylesManager.font14DarkBlueBold
                : StylesManager.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}