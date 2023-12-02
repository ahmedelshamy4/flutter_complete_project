import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font13GryRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainGry,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: AppColors.mainBlack,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font16BlueWithSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
