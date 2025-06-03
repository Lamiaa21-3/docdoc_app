
import 'package:doc_advanced/core/theming/color.dart';
import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopAppbar extends StatelessWidget {
  const HomeTopAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(



children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Hi ,Lamiaa',style: StylesManager.font18DarkBlueBold,),
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
            'assets/svgs/notifications.svg',
          ),
        )

],
    );
  }
}