import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/screens/widgets/widget.dart';
import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';

class CopyRightSection extends StatelessWidget {
  const CopyRightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 88.h, bottom: 129.h),
      child: Column(
        children: [
          const SosmedListWidget(color: ColorName.nevada),
          SizedBox(
            height: 24.h,
          ),
          RichText(
            text: TextSpan(
              style: StaticTextStyles.inter14Fw500(color: ColorName.nevada),
              children: [
                const TextSpan(text: '© 2023  - '),
                TextSpan(
                    text: 'vpmaharani dev',
                    style:
                        StaticTextStyles.inter14Fw500(color: ColorName.nevada)),
              ],
            ),
          )
        ],
      ),
    );
  }
}