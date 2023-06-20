import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/presentation/settings/appearance_settings_card.dart';
import 'package:islamic_desktop_software/presentation/settings/font_settings_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../content_settings_card.dart';

class MiniSettingsDrawer extends StatelessWidget {
  const MiniSettingsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      height: double.infinity,
      width: DesktopScreen.width * 0.75,
      decoration: BoxDecoration(
        color: Get.isDarkMode
            ? themeData.scaffoldBackgroundColor
            : const Color(0xfff4f4f4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.px),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.px),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const MiniSettingsTopBar(),
            SizedBox(height: 10.px),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ContentSettingsCard(),
                    FontSettingsCard(),
                    //NotificationSettingsCard(),
                    const AppearanceSettingsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniSettingsTopBar extends StatelessWidget {
  const MiniSettingsTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.px, vertical: 21.px),
      decoration: BoxDecoration(
        color: Get.isDarkMode ? themeData.cardColor : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.px),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 24.px,
              ),
            ),
          ),
          SizedBox(
              width: DesktopScreen.isMobile
                  ? DesktopScreen.width * 0.2
                  : DesktopScreen.width * 0.3),
          Center(
            child: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: DesktopScreen.isMobile ? 14.px : 22.px,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
