import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets.gen.dart';
import '../../colors.gen.dart';

class PaginateChevron extends StatelessWidget {
  const PaginateChevron({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorName.blueChalk.withOpacity(0.5),
          ),
          child: Assets.images.icons.icLeft.svg(
              height: 24.h,
              width: 24.w,
              color: ColorName.purple.withOpacity(0.5)),
        ),
        SizedBox(
          width: 24.w,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: ColorName.blueChalk),
          child: Assets.images.icons.icRight
              .svg(height: 24.h, width: 24.w, color: ColorName.purple),
        )
      ],
    );
  }
}