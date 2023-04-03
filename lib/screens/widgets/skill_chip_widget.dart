import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

class SkillChipWidget extends StatelessWidget {
  const SkillChipWidget({
    Key? key,
    required this.skill,
    this.textStyle,
  }) : super(key: key);

  final String skill;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: ColorName.seashell),
      ),
      child: Text(
        skill,
        style: textStyle ??
            StaticTextStyles.inter12Fw500(
              color: ColorName.nevada,
            ),
      ),
    );
  }
}
