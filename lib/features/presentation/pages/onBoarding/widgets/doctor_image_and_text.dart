import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/custom_widgets/svg_icons.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgIcon(
          iconName: "logo_low_opacity.svg",
          width: 100.w,
          height: 100.h,
        ),
        Container(
          padding: EdgeInsets.all(20.w),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, .4],
            ),
          ),
          child: Image.asset(
            "assets/svgs/doctor_profile.jpg",
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\n Appointment App",
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
