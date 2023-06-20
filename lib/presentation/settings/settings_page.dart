import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/presentation/settings/appearance_settings_card.dart';
import 'package:islamic_desktop_software/presentation/settings/content_settings_card.dart';
import 'package:islamic_desktop_software/presentation/settings/font_settings_card.dart';
import 'package:islamic_desktop_software/presentation/settings/notification_settings_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.cardColor,
      appBar: _buildSettingsAppBar(themeData),
      body: Container(
        height: DesktopScreen.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.px),
            topLeft: Radius.circular(20.px),
          ),
          color: DesktopAppColors.whiteColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.px),
            topLeft: Radius.circular(20.px),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 6.px),
                const ContentSettingsCard(),
                FontSettingsCard(),
                NotificationSettingsCard(),
                const AppearanceSettingsCard(),
                SizedBox(height: 75.px)
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildSettingsAppBar(ThemeData themeData) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: themeData.cardColor,
      title: Text(
        'Settings',
        style: TextStyle(
          color: DesktopAppColors.aeroBlue,
          fontSize: DesktopScreen.isMobile ? 16.px : 24.px,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      // title: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     // const AppBarBackButton(color: HadithColors.blackCharcoal),
      //     const Spacer(),
      //     Text(
      //       'Settings',
      //       style: TextStyle(
      //         color: HadithColors.blackCharcoal,
      //         fontSize: 16.px,
      //         fontWeight: FontWeight.w600,
      //       ),
      //     ),
      //     SizedBox(width: 20.px),
      //     const Spacer(),
      //   ],
      // ),
    );
  }
}
