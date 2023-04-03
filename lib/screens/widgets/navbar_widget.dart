import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/models/item_navbar_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';

class Navbar extends StatelessWidget {
  const Navbar(
      {Key? key, required this.itemScrollController, required this.list})
      : super(key: key);

  final ItemScrollController itemScrollController;
  final List<ItemNavbarModel> list;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        list.length,
        (index) => MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              itemScrollController.scrollTo(
                  index: index + 1,
                  duration: Duration(milliseconds: 500 * (index + 1)));
            },
            child: Text(
              list[index].label,
              style: list[index].isSelected
                  ? StaticTextStyles.inter16Fw500(color: ColorName.ebonyClay)
                  : StaticTextStyles.inter16Fw400(color: ColorName.ebonyClay),
            ),
          ),
        ),
      )
          // [
          //   GestureDetector(
          //     onTap: () {
          //       widget.itemScrollController
          //           .scrollTo(index: 1, duration: Duration(milliseconds: 500));
          //     },
          //     child: Text(
          //       'Services',
          //       style: StaticTextStyles.inter16Fw500(color: ColorName.ebonyClay),
          //     ),
          //   ),
          //   GestureDetector(
          //     onTap: () {
          //       widget.itemScrollController
          //           .scrollTo(index: 2, duration: Duration(milliseconds: 1000));
          //     },
          //     child: Text(
          //       'Portfolios',
          //       style: StaticTextStyles.inter16Fw400(color: ColorName.ebonyClay),
          //     ),
          //   ),
          //   GestureDetector(
          //     onTap: () {
          //       widget.itemScrollController
          //           .scrollTo(index: 3, duration: Duration(milliseconds: 1500));
          //     },
          //     child: Text(
          //       'Experience',
          //       style: StaticTextStyles.inter16Fw400(color: ColorName.ebonyClay),
          //     ),
          //   ),
          //   GestureDetector(
          //     onTap: () {
          //       widget.itemScrollController
          //           .scrollTo(index: 4, duration: Duration(milliseconds: 2000));
          //     },
          //     child: Text(
          //       'Education',
          //       style: StaticTextStyles.inter16Fw400(color: ColorName.ebonyClay),
          //     ),
          //   ),
          //   GestureDetector(
          //     onTap: () {
          //       widget.itemScrollController
          //           .scrollTo(index: 5, duration: Duration(milliseconds: 500));
          //     },
          //     child: Text(
          //       'Get In Touch',
          //       style: StaticTextStyles.inter16Fw400(color: ColorName.ebonyClay),
          //     ),
          //   ),
          // ]
          .fold(
              [],
              (previousValue, element) => [
                    ...previousValue,
                    ...[
                      if (previousValue.isNotEmpty)
                        SizedBox(
                          width: 56.w,
                        ),
                      element
                    ]
                  ]),
    );
  }
}
