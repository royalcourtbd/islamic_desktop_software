import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_card_header.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_container.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_toggle_option.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContentSettingsCard extends StatelessWidget {
  // HomeController homeController = Get.put(HomeController());
  const ContentSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          const SettingsCardHeader(
              title: "Content Settings", svgPath: SvgPath.icArrowDown),
          SizedBox(height: DesktopScreen.isMobile ? 25.px : 27.px),
          SettingsToggleOption(
            title: "Show Chapter",
            onToggle: (bool toggled) {
              // homeController.toggleChapter();
            },
            toggled: true,
          ),
          SizedBox(height: DesktopScreen.isMobile ? 25.px : 27.px),
          SettingsToggleOption(
            title: "Show Arabic",
            onToggle: (bool toggled) {
              // homeController.toggleArabic();
            },
            toggled: true,
          ),
          SizedBox(height: DesktopScreen.isMobile ? 25.px : 27.px),
          SettingsToggleOption(
            title: "Hadith Action Button",
            onToggle: (bool toggled) {
              // homeController.toggleOtherInfo();
            },
            toggled: true,
          ),
        ],
      ),
    );
  }
}
