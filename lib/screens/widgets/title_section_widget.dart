import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';
import 'divider_beginning_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const DividerBeginning(),
        SizedBox(
          width: 16.w,
        ),
        Text(
          title,
          style: StaticTextStyles.inter12Fw500(color: ColorName.nevada),
        )
      ],
    );
  }
}