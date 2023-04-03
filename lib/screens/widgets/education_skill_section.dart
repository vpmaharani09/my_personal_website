import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:personal_website/screens/widgets/widget.dart';

class EducationSkillSection extends StatelessWidget {
  const EducationSkillSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 105.h, left: 120.w, right: 187.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSection(title: 'L E A R N I N G  P A T H'),
          SizedBox(
            height: 9.h,
          ),
          Text(
            'Education & Skills',
            style: StaticTextStyles.jakartasans36Fw700(
              color: ColorName.ebonyClay,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40.h, right: 76.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    StepperEducation(
                        isAddLine: true,
                        school: 'Binus Online Learning',
                        degree: "Bachelor's degree - Computer Engineering",
                        time: '2023 - 2027'),
                    StepperEducation(
                        isAddLine: true,
                        school: 'Hacktiv8 Indonesia',
                        degree: "Full Stack Javascript",
                        time: 'Jul 2021 - Oct 2021'),
                    StepperEducation(
                        isAddLine: false,
                        school: 'SMAN 1 Probolinggo',
                        degree: "SCIENCE",
                        time: '2018 - 2021'),
                  ],
                ),
              ),
              SizedBox(
                width: 148.w,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'For 1+ years, I have been continuously learning in the field of Flutter front-end and experimenting with new technologies and frameworks, and here you can see a summary of my skills.',
                      style: StaticTextStyles.inter16Fw400(
                          color: ColorName.nevada),
                    ),
                    SizedBox(
                      height: 64.h,
                    ),
                    Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h,
                      children: [
                        SkillChipWidget(
                          skill: 'Dart',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Flutter (Android/IOS/Web)',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'State Management (Provider, BLoC)',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Reactive Programming',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Git Version Control',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Clean Architecture',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Modularization',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Automation Test',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'CI/CD',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'REST API',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Socket IO',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                        SkillChipWidget(
                          skill: 'Firebase Cloud Messaging',
                          textStyle: StaticTextStyles.inter16Fw500(
                              color: ColorName.nevada),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 120.h,
          ),
        ],
      ),
    );
  }
}
