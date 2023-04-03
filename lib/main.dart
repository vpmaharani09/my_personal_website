import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/screens/porto_screen.dart';
import 'package:personal_website/screens/portofolio_screen1.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const PersonalWebsiteApp());
}

class PersonalWebsiteApp extends StatelessWidget {
  const PersonalWebsiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 774),
        builder: (_, __) {
          return MaterialApp(
            title: 'Personal Website',
            theme: ThemeData(
                primaryColorDark: ColorName.caribbeanGreen,
                primaryColorLight: ColorName.blueStone),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: PortofolioScreen2(),
          );
        });
  }
}
