// import 'package:doc_advanced/core/helper/spacing.dart';
// import 'package:doc_advanced/core/theming/color.dart';
// import 'package:doc_advanced/core/theming/styles.dart';
// import 'package:doc_advanced/featues/home/data/models/specialization_response_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class DoctorSpecialityListView extends StatelessWidget {
//   final List<SpecializationsData?> specializationsDataList;
//
//   const DoctorSpecialityListView(
//       {super.key, required this.specializationsDataList});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.h,
//       child: ListView.builder(
//           itemCount: 12,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 28.r,
//                     backgroundColor: ColorManager.lightBlue,
//                     child: SvgPicture.asset(
//                       'asset/svgs/general_speciality.svg',
//                       height: 40.h,
//                       width: 40.w,
//                     ),
//                   ),
//                   verticalSpace(8),
//                   Text(
//                     'Specializations',
//                     style: StylesManager.font12DarkBlueRegular,
//                   )
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }
