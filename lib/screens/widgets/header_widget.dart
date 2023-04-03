import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/models/item_navbar_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../assets.gen.dart';
import '../../colors.gen.dart';
import '../../utils/statictextstyles.dart';
import 'logo_profile_widget.dart';
import 'navbar_widget.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.itemScrollController,
    required this.listNavbar,
  }) : super(key: key);

  final ItemScrollController itemScrollController;
  final List<ItemNavbarModel> listNavbar;

  @override
  Widget build(BuildContext context) {
    return Row(
      // logo
      children: [
        const LogoProfile(),
        // navbar
        const Spacer(),
        Navbar(itemScrollController: itemScrollController, list: listNavbar),
        const Spacer(),
        Assets.images.icons.icMoon
            .svg(height: 24.h, width: 24.w, color: Colors.transparent),
        SizedBox(
          width: 32.w,
        ),
        Material(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
          child: InkWell(
            onTap: () {
              launchUrlString(
                  'https://drive.google.com/file/d/1BO1i9j1FQELi9yLudrGXKK2dUYP0__jq/view?usp=sharing');
            },
            splashColor: ColorName.blueChalk,
            mouseCursor: SystemMouseCursors.click,
            borderRadius: BorderRadius.circular(8.r),
            customBorder: Border.all(color: ColorName.seashell),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorName.seashell),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Text(
                'Resume',
                style: StaticTextStyles.inter14Fw500(),
              ),
            ),
          ),
        )
      ],
      // mode
      // download resume
    );
  }
}
