import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/util/desktop_screen.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_card_header.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_container.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_large_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_toggle_option.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppearanceSettingsCard extends StatelessWidget {
  //final HomeController _homeController = HomeController();
  const AppearanceSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          const SettingsCardHeader(
            title: "Appearance",
            svgPath: SvgPath.icArrowDown,
          ),
          SizedBox(height: DesktopScreen.isMobile ? 25.px : 30.px),
          SettingsToggleOption(
            title: "Always On Display Mode",
            onToggle: (bool toggled) {
              // _homeController.toggleDisplayMode();
            },
            toggled: true,
          ),
          SizedBox(height: DesktopScreen.isMobile ? 25.px : 30.px),
          const SettingsLargeOption(),
        ],
      ),
    );
  }
}
