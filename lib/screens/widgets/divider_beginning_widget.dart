import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.gen.dart';

class DividerBeginning extends StatelessWidget {
  const DividerBeginning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: 16.w,
      color: ColorName.alto,
    );
  }
}