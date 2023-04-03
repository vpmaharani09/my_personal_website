import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    Key? key,
    required this.desc,
  }) : super(key: key);

  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.w,
          height: 2.h,
          color: ColorName.alto,
        ),
        SizedBox(
          width: 18.h,
        ),
        Expanded(
          child: Text(
            desc,
            style: StaticTextStyles.inter16Fw400(color: ColorName.nevada),
          ),
        ),
      ],
    );
  }
}
