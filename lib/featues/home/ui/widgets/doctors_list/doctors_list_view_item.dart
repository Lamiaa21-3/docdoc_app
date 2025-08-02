import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/specialization_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  final int currentIndex;

  const DoctorsListViewItem({
    super.key,
    this.doctorsModel,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(
              value: downloadProgress.progress,
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${doctorsModel?.name}',
                  style: StylesManager.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  ' ${doctorsModel?.degree} | ${doctorsModel?.phone} ',
                  style: StylesManager.font12DarkBlueRegular,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.email} ',
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
