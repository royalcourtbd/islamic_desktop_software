import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/theme.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/quran_home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class IslamicDesktopSoftware extends StatelessWidget {
  const IslamicDesktopSoftware({super.key});
  


  @override
  Widget build(BuildContext context) {
    _setUpStatusBarColor();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
          locale: const Locale('en', 'US'),
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          title: 'Islamic Desktop Software'.tr,
          defaultTransition: Transition.rightToLeftWithFade,
          home: QuranHomePage(),
        );
      },
    );
  }

  static void _setUpStatusBarColor() {
    const Color color = Colors.transparent;
    const SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        systemNavigationBarColor: color, statusBarColor: color);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
