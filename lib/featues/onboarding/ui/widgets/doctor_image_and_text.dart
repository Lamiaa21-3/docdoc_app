import 'package:doc_advanced/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // SvgPicture.asset('asset/svgs/docdco_logo_background.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: (const [0.14, 0.4]),
            ),
          ),
          child: Image.asset('asset/images/doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \n Appointment App',
            textAlign: TextAlign.center,
            style: StylesManager.font32BlueBlod.copyWith(height: 1.4),
          ),
        ),
        // SvgPicture.asset(''),
      ],
    );
  }
}
