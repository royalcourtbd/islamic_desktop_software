import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/external_libs/expanded_tile.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/audio_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/font_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/reading_settings_content.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/setting_tab_button_section.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/settings_tile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingSectionWidget extends StatelessWidget {
  const SettingSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.px, right: 24.px, bottom: 24.px),
      child: Container(
        padding: EdgeInsets.all(15.px),
        width: 300.px,
        height: double.infinity,
        decoration: BoxDecoration(
          color: DesktopAppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingTabButtonSection(),
              gapH12,
              SettingsTile(
                content: const ReadingSettingsContent(),
                tileController: ExpandedTileController(),
                title: 'Reading Settings',
              ),
              gapH12,
              SettingsTile(
                svgPath: SvgPath.icT,
                content: const FontSettingsContent(),
                tileController: ExpandedTileController(isExpanded: true),
                title: 'Fonts Settings',
              ),
              gapH12,
              SettingsTile(
                svgPath: SvgPath.icT,
                content: const AudioSettingsContent(),
                tileController: ExpandedTileController(),
                title: 'Audio Settings',
              )
            ],
          ),
        ),
      ),
    );
  }
}
