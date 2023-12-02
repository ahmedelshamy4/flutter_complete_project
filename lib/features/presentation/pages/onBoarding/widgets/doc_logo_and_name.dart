import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/custom_widgets/svg_icons.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SvgIcon(iconName: "doc_logo.svg"),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "Docdoc",
          style: TextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
