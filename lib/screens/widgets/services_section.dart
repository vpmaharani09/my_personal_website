import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:personal_website/screens/widgets/widget.dart';

class SevicesSection extends StatelessWidget {
  const SevicesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 114.h, bottom: 184.h, left: 122.w, right: 122.w),
      color: ColorName.alabaster,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          const TitleSection(title: 'S E R V I C E S'),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Specialized in',
            style: StaticTextStyles.jakartasans36Fw700(),
          ),
          SizedBox(
            height: 104.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SpecializedCardItem(
              label: 'Mobile Development',
              desc:
                  'Create and implementing your applications with documentation, mainly in building mobile apps',
              icon: Assets.images.icons.icApp.path,
            ),
            SpecializedCardItem(
              label: 'Web Development',
              desc:
                  'Create and maintain your websites and also take care of its performance and traffic capacity.',
              icon: Assets.images.icons.icGlobe.path,
            ),
            SpecializedCardItem(
              label: 'UI/UX Design',
              desc:
                  'Turn what you have in mind of a digital product into reality. For any platform you consider.',
              icon: Assets.images.icons.icCrown.path,
            ),
          ])
        ],
      ),
    );
  }
}
