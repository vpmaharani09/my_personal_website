import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../assets.gen.dart';

class SosmedListWidget extends StatelessWidget {
  const SosmedListWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              _launchURL(url: 'https://www.instagram.com/v.p.maharani/');
            },
            child: Assets.images.icons.icInstagram
                .svg(height: 24.h, width: 24.w, color: color),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              _launchURL(url: 'https://github.com/vpmaharani09');
            },
            child: Assets.images.icons.icGithub
                .svg(height: 24.h, width: 24.w, color: color),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              _launchURL(url: 'https://www.codewars.com/users/vpmaharani09');
            },
            child: Assets.images.icons.icCodewarsOutlined
                .svg(height: 24.h, width: 24.w, color: color),
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
            child: Assets.images.icons.icLinkedin
                .svg(height: 24.h, width: 24.w, color: color),
          ),
        ),
      ].fold(
          [],
          (previousValue, element) => [
                ...previousValue,
                ...[
                  if (previousValue.isNotEmpty)
                    SizedBox(
                      width: 32.w,
                    ),
                  element
                ]
              ]),
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
