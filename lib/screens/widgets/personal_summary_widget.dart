import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/screens/widgets/sosmed_list_widget.dart';
import 'package:personal_website/screens/widgets/title_section_widget.dart';

import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';

class PersonalSummaryWidget extends StatelessWidget {
  const PersonalSummaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 538.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSection(title: 'M Y   N A M E   I S'),
          SizedBox(
            height: 16.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'VP', style: StaticTextStyles.jakartasans44Fw700()),
                TextSpan(
                    text: 'Maharani.',
                    style: StaticTextStyles.jakartasans44Fw700(
                        color: ColorName.purple))
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            'Creative front-end developer with more than +1 years of experience in enterprise companies and startups. Proficient in Dart, Flutter, and BLoC. Passionate about UI/UX',
            style: StaticTextStyles.inter16Fw400(height: 2.h),
          ),
          SizedBox(
            height: 40.h,
          ),
          const SosmedListWidget(
            color: ColorName.ebonyClay,
          )
        ],
      ),
    );
  }
}
