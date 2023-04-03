import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/screens/widgets/widget.dart';

class InformationContactSection extends StatelessWidget {
  const InformationContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.alabaster,
      padding: EdgeInsets.only(top: 104.h, bottom: 134.h, left: 120.w),
      child: Row(
        children: [
          const FormWidget(),
          SizedBox(
            width: 104.h,
          ),
          Expanded(
            child: Column(
              children: [
                InfoBoxWidget(
                  label: 'Address',
                  detail: 'Adhyaksa V Street, Tangerang, Indonesia',
                  icon: Assets.images.icons.icPin,
                ),
                InfoBoxWidget(
                  label: 'Phone',
                  detail: '(+62) 812-3414-2500',
                  icon: Assets.images.icons.icPhoneCall,
                ),
                InfoBoxWidget(
                  label: 'E-Mail',
                  detail: 'vpmaharani09@gmail.com',
                  icon: Assets.images.icons.icMail,
                ),
              ].fold(
                  [],
                  (previousValue, element) => [
                        ...previousValue,
                        ...[
                          if (previousValue.isNotEmpty)
                            SizedBox(
                              height: 48.h,
                            ),
                          element
                        ]
                      ]),
            ),
          )
        ],
      ),
    );
  }
}
