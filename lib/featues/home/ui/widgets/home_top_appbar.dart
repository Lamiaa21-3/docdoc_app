import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: StylesManager.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: StylesManager.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorManager.moreLighterGray,
          child: SvgPicture.asset(
            'asset/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}