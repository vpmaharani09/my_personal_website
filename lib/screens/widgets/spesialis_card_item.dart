import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';

class SpecializedCardItem extends StatelessWidget {
  const SpecializedCardItem({
    Key? key,
    required this.label,
    required this.desc,
    required this.icon,
  }) : super(key: key);

  final String label, desc, icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 53.h, horizontal: 57.w),
      height: 294.h,
      width: 361.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorName.selago,
                borderRadius: BorderRadius.circular(16.r)),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: SvgPicture.asset(icon, height: 24.h, width: 24.w),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            label,
            style: StaticTextStyles.jakartasans16Fw500(),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            desc,
            style: StaticTextStyles.inter14Fw400(lineHeight: 1.7.h),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
