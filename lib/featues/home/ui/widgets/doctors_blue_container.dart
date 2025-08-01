
import 'package:doc_advanced/core/helper/spacing.dart';
import 'package:doc_advanced/core/theming/color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 200.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: ColorManager.mainBlue
              // image: const DecorationImage(
              //   image: AssetImage('assets/images/home_blue_pattern.png'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book and\nschedule with\nnearest doctor',
                    style: StylesManager.font18WhiteMedium,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace(16),
                   ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.0),
                        ),
                      ),
                      child: Text(
                        'Find Nearby',
                        style: StylesManager.font12BlueRegular,
                      ),
                    ),

                ],
              ),
            ),
          ),
          Positioned(
            right: 12.w,
            top: 0,

            child: Image.asset(
              'asset/images/omar.png',
              height: 250.h,
            ),
          ),
        ],
      ),
    );
  }
}
//asset/images/omar.png