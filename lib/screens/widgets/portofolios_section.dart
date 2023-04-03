import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'widget.dart';

class PortofoliosSection extends StatelessWidget {
  const PortofoliosSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 80.h, left: 120.w, right: 120.w, bottom: 150.h),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleSection(title: 'M Y  W O R K S'),
                  SizedBox(
                    height: 9.h,
                  ),
                  Text(
                    'Featured Portfolios',
                    style: StaticTextStyles.jakartasans36Fw700(),
                  )
                ],
              ),
              Spacer(),
              // PaginateChevron(),
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            children: [
              PortoCardItem(
                appName: 'Care Dokter',
                imgPath: Assets.images.logo.icPortoCaredokter.path,
                skills: const ['Flutter', 'Dart'],
                onTap: () async {
                  await launchUrlString(
                    'https://play.google.com/store/apps/details?id=com.selarasholding.caredokter',
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}