import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/color.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/specialization_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {

  const DoctorsListViewItem({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // CachedNetworkImage(
          //   imageUrl:
          //   "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
          //   progressIndicatorBuilder: (context, url, downloadProgress) {
          //     return Shimmer.fromColors(
          //       baseColor: ColorManager.lightGray,
          //       highlightColor: Colors.white,
          //       child: Container(
          //         width: 110.w,
          //         height: 120.h,
          //         decoration: BoxDecoration(
          //           shape: BoxShape.rectangle,
          //           borderRadius: BorderRadius.circular(12.0),
          //           color: Colors.white,
          //         ),
          //       ),
          //     );
          //   },
          //   imageBuilder: (context, imageProvider) => Container(
          //     width: 110.w,
          //     height: 120.h,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.rectangle,
          //       borderRadius: BorderRadius.circular(12.0),
          //       image: DecorationImage(
          //         image: imageProvider,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          // horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'Lamiaa',
                  style: StylesManager.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  'Degree 1111111111111',
                  style: StylesManager.font12DarkBlueRegular,
                ),
                verticalSpace(5),
                Text(
              'lamiaa@gmail.com',
                  style: StylesManager.font12DarkBlueRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}