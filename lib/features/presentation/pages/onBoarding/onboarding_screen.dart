import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helper/extentions.dart';
import 'package:flutter_complete_project/core/routing/routs.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/features/presentation/pages/onBoarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_complete_project/features/presentation/pages/onBoarding/widgets/doctor_image_and_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font13BlueRegular,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppTextButton(
                    horizontalPadding: 16.w,
                    buttonText: "Get Started",
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      context.pushNamed(Routs.loginScreen);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
