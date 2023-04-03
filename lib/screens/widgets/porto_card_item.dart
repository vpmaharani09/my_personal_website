import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:personal_website/screens/widgets/widget.dart';

class PortoCardItem extends StatelessWidget {
  const PortoCardItem({
    Key? key,
    required this.appName,
    required this.onTap,
    required this.skills,
    required this.imgPath,
  }) : super(key: key);

  final String appName, imgPath;
  final VoidCallback onTap;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361.w,
      height: 480.h,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(
          //     imgPath,
          //   ),
          //   fit: BoxFit.fitWidth,
          //   alignment: Alignment.topCenter,

          // ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xff00000029).withOpacity(16 / 100),
              offset: Offset(0, 3.5.h),
              blurRadius: 35,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.r),
                topRight: Radius.circular(18.r),
              ),
              child: Assets.images.logo.icPortoCaredokter
                  .image(fit: BoxFit.fitWidth)),
          Container(
            padding: EdgeInsets.only(
              top: 20.h,
              left: 22.w,
              right: 22.w,
              bottom: 20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appName,
                  style: StaticTextStyles.poppins16Fw700(
                      color: ColorName.mineShaft),
                ),
                SizedBox(
                  height: 8.75.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    skills.length,
                    (index) => SkillChipWidget(
                      skill: skills[index],
                      textStyle: StaticTextStyles.poppins9Fw600(
                          color: ColorName.nevada),
                    ),
                  ).fold(
                    [],
                    (previousValue, element) => [
                      ...previousValue,
                      ...[
                        if (previousValue.isNotEmpty)
                          SizedBox(
                            width: 14.w,
                          ),
                        element
                      ],
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.6.h,
                ),
                Row(
                  children: [
                    Text(
                      'View App',
                      style: StaticTextStyles.poppins12Fw600(
                          color: ColorName.ebonyClay),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Assets.images.icons.icArrowRightLong
                        .svg(height: 21.h, width: 21.w),
                    Spacer(),
                    Material(
                      color: ColorName.purple,
                      borderRadius: BorderRadius.circular(10.r),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10.r),
                        customBorder: Border.all(color: ColorName.blueChalk),
                        splashColor: ColorName.blueChalk,
                        mouseCursor: SystemMouseCursors.click,
                        onTap: onTap,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: ColorName.blueChalk),
                              color: Colors.transparent),
                          padding: EdgeInsets.symmetric(
                              vertical: 9.h, horizontal: 44.w),
                          child: Text(
                            'Download',
                            style: StaticTextStyles.poppins14Fw600(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
