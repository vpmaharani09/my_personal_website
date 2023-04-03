import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

class InfoBoxWidget extends StatelessWidget {
  const InfoBoxWidget({
    Key? key,
    required this.label,
    required this.detail,
    required this.icon,
  }) : super(key: key);

  final String label;
  final String detail;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorName.selago,
          ),
          child: icon.svg(height: 24.h, width: 24.w),
        ),
        SizedBox(
          width: 24.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: StaticTextStyles.inter16Fw500(color: ColorName.ebonyClay),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              detail,
              style: StaticTextStyles.inter14Fw400(color: ColorName.nevada),
            )
          ],
        )
      ],
    );
  }
}
