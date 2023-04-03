import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets.gen.dart';
import '../../colors.gen.dart';

class HeroLogoImage extends StatelessWidget {
  const HeroLogoImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
      height: 321.h,
      width: 321.w,
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.purple),
        shape: BoxShape.circle,
      ),
      child: Assets.images.logo.icRani.image(fit: BoxFit.contain),
    );
  }
}