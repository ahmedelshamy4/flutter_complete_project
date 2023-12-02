import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helper/extentions.dart';
import 'package:flutter_complete_project/core/routing/routs.dart';
import 'package:flutter_complete_project/core/theming/app_colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routs.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        maximumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        "Get Started",
        style: TextStyles.font16BlueWithSemiBold,
      ),
    );
  }
}
