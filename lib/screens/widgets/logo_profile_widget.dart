import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets.gen.dart';
import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';

class LogoProfile extends StatelessWidget {
  const LogoProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.logo.icVpmlogo.svg(width: 40.w, height: 40.h),
        SizedBox(
          width: 14.w,
        ),
        Text(
          'VPMaharani',
          style:
              StaticTextStyles.jakartasans18Fw700(color: ColorName.ebonyClay),
        )
      ],
    );
  }
}
