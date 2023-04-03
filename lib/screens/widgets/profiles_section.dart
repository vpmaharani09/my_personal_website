import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/models/item_navbar_model.dart';
import 'package:personal_website/screens/widgets/widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.itemScrollController, required this.listNavbar,
  }) : super(key: key);

  final ItemScrollController itemScrollController;
  final List<ItemNavbarModel> listNavbar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 100.w,
        left: 100.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Header(itemScrollController: itemScrollController, listNavbar: listNavbar),
          SizedBox(
            height: 150.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [PersonalSummaryWidget(), HeroLogoImage()],
          ),
          SizedBox(
            height: 207.h,
          ),
        ],
      ),
    );
  }
}
