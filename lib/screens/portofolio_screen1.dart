import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../assets.gen.dart';
import '../colors.gen.dart';
import '../utils/statictextstyles.dart';

class PortofolioScreen1 extends StatelessWidget {
  const PortofolioScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 43.h),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Text(
                    'Portfolio',
                    style: StaticTextStyles.merriweather14Fw700(
                        color: Colors.transparent),
                  ),
                  Text(
                    'About',
                    style: StaticTextStyles.merriweather14Fw700(
                        color: Colors.transparent),
                  ),
                  Text(
                    'Get In Touch',
                    style: StaticTextStyles.merriweather14Fw700(
                        color: Colors.transparent),
                  ),
                ].fold(
                    [],
                    (p, e) => [
                          ...p,
                          ...[
                            if (p.isNotEmpty)
                              SizedBox(
                                width: 20.w,
                              ),
                            e
                          ]
                        ]),
              ),
              Expanded(
                child: SvgPicture.asset(
                  'assets/images/logo/ic_logo_hello.svg',
                  height: 44.h,
                  width: 66.w,
                ),
              ),
              Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(url: 'https://github.com/vpmaharani09');
                      },
                      child: Assets.images.icons.icGithubDark
                          .svg(height: 24.h, width: 24.w),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(
                            url: 'https://www.instagram.com/v.p.maharani/');
                      },
                      child: Assets.images.icons.icInstagramDark
                          .svg(height: 24.h, width: 24.w),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(
                            url: 'https://www.codewars.com/users/vpmaharani09');
                      },
                      child: Assets.images.icons.icCodewarsIcon
                          .svg(height: 24.h, width: 24.w),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(
                            url:
                                'https://www.linkedin.com/in/vidya-prita-maharani-475324221/');
                      },
                      child: Assets.images.icons.icLinkedinDark
                          .svg(height: 24.h, width: 24.w),
                    ),
                  ),
                ].fold(
                    [],
                    (p, e) => [
                          ...p,
                          ...[
                            if (p.isNotEmpty)
                              SizedBox(
                                width: 20.w,
                              ),
                            e
                          ]
                        ]),
              )
            ],
          ),
          SizedBox(
            height: 88.h,
          ),
          Text(
            'Vidya Prita Maharani',
            style: StaticTextStyles.merriweather40Fw900(),
          ),
          Text(
            'Flutter Developer',
            style: StaticTextStyles.merriweather36Fw300(
                color: ColorName.blueStone),
          ),
          Text(
            'Based in Indonesia',
            style: StaticTextStyles.merriweather36Fw300(),
          ),
          SizedBox(
            height: 46.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            height: 248.h,
            width: 248.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorName.blueStone, width: 2.w)),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 228.h,
              width: 228.w,
              child: Image.asset(
                'assets/images/logo/ic_rani.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }

  _launchURL({required String url}) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
