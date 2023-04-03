import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/models/item_navbar_model.dart';
import 'package:personal_website/screens/widgets/widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PortofolioScreen2 extends StatelessWidget {
  PortofolioScreen2({
    Key? key,
  }) : super(key: key);

  ItemScrollController itemScrollController = ItemScrollController();

  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: itemPositionsListener.itemPositions,
        builder: (context, val, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: val.isNotEmpty && val.first.index > 0
                ? FloatingActionButton(
                    mouseCursor: SystemMouseCursors.click,
                    backgroundColor: ColorName.purple,
                    child: Icon(
                      Icons.arrow_upward_rounded,
                      size: 32.w,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      itemScrollController.scrollTo(
                          index: 0, duration: Duration(milliseconds: 1000));
                    },
                  )
                : null,
            body: ScrollablePositionedList.builder(
              itemPositionsListener: itemPositionsListener,
              itemScrollController: itemScrollController,
              itemCount: 7,
              itemBuilder: (context, index) {
                final List<ItemNavbarModel> list = [
                  ItemNavbarModel(
                    label: 'Services',
                    isSelected: index == 1,
                  ),
                  ItemNavbarModel(
                    label: 'Portfolios',
                    isSelected: index == 2,
                  ),
                  ItemNavbarModel(
                    label: 'Experience',
                    isSelected: index == 3,
                  ),
                  ItemNavbarModel(
                    label: 'Education',
                    isSelected: index == 4,
                  ),
                  ItemNavbarModel(
                    label: 'Get In Touch',
                    isSelected: index == 5,
                  ),
                ];
                switch (index) {
                  case 0:
                    return ProfileSection(
                      itemScrollController: itemScrollController,
                      listNavbar: list,
                    );
                  case 1:
                    return const SevicesSection();
                  case 2:
                    return const PortofoliosSection();
                  case 3:
                    return const ExpericesSection();
                  case 4:
                    return const EducationSkillSection();
                  case 5:
                    return const InformationContactSection();
                  case 6:
                    return const CopyRightSection();
                  default:
                    return ProfileSection(
                      itemScrollController: itemScrollController,
                      listNavbar: list,
                    );
                }
              },
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 41.h),
            ),
          );
        });
  }
}
