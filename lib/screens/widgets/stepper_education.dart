import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

class StepperEducation extends StatelessWidget {
  const StepperEducation({
    Key? key,
    required this.isAddLine,
    required this.school,
    required this.degree,
    required this.time,
  }) : super(key: key);

  final bool isAddLine;
  final String school, degree, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 16.h,
              width: 16.w,
              decoration: const BoxDecoration(
                color: ColorName.blueChalk,
                shape: BoxShape.circle,
              ),
            ),
            if (isAddLine)
              Container(
                height: 144.h,
                width: 1.w,
                color: ColorName.seashell,
              ),
          ],
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              school,
              style: StaticTextStyles.jakartasans16Fw500(
                  color: ColorName.ebonyClay),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              degree,
              style: StaticTextStyles.inter14Fw400(
                color: ColorName.nevada,
              ),
            ),
            SizedBox(
              height: 24.w,
            ),
            Text(
              time,
              style: StaticTextStyles.inter14Fw500(color: ColorName.ebonyClay),
            )
          ],
        )
      ],
    );
  }
}
