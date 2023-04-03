import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

import 'widget.dart';

class ExpericesSection extends StatelessWidget {
  const ExpericesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.alabaster,
      padding: EdgeInsets.only(
        top: 104.h,
        left: 120.w,
        right: 114.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  const TitleSection(title: 'M Y  W O R K S'),
                  SizedBox(
                    height: 9.h,
                  ),
                  Text(
                    'Work Experices',
                    style: StaticTextStyles.jakartasans36Fw700(),
                  )
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              Column(
                children: [
                  Container(
                    width: 288.w,
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 14.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Mandaya Royal Hospital Group',
                            style: StaticTextStyles.inter16Fw500(
                                color: ColorName.purple),
                          ),
                        ),
                        Assets.images.icons.icRight.svg(
                          width: 24.w,
                          height: 24.h,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 137.w,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 132.h, bottom: 122.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: StaticTextStyles.jakartasans18Fw500(
                          color: ColorName.ebonyClay),
                      children: [
                        const TextSpan(text: 'Mobile Developer  '),
                        TextSpan(
                          text: 'Care Dokter',
                          style: StaticTextStyles.jakartasans18Fw500(
                            color: ColorName.ebonyClay,
                            textDecoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Tangerang, Indonesia',
                    style: StaticTextStyles.inter14Fw400(
                      color: ColorName.nevada,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Nov 2021 - Present · Full-time',
                    style: StaticTextStyles.inter14Fw500(
                      color: ColorName.nevada,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      const SkillChipWidget(skill: 'Dart'),
                      SizedBox(
                        width: 16.h,
                      ),
                      const SkillChipWidget(skill: 'Flutter'),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    color: ColorName.seashell,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const DescriptionItem(
                    desc:
                        'Develop applications that make it easier for users to search and view doctor profiles and book face-to-face or teleconsultation appointments',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const DescriptionItem(
                    desc: 'Add nearest hospital search for mobile app',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const DescriptionItem(
                    desc:
                        'Collaborate with back-end developers and mobile designers to improve usability.',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const DescriptionItem(
                    desc:
                        'Improving overall mobile performance for mobile users.',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
