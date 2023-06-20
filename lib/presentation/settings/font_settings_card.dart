import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_container.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_drop_down_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_slider_option.dart';

class FontSettingsCard extends StatelessWidget {
  final List<String> _script = [
    'Indupak',
    'Uthmani',
  ];
  final List<String> _arabicFonts = [
    'Al Mushaf',
    'Lateef',
    'KFGQ Hafs',
  ];

  FontSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SettingsCardHeader(
          //   title: 'Font Settings',
          //   svgPath: SvgPath.icArrowDown,
          // ),
          // SizedBox(height: DesktopScreen.isMobile ? 25.px : 27.px),
          Container(
            color: Colors.red,
            child: SettingsSliderOption(
              title: "Arabic Font Size",
              currentValue: 8,
              minValue: 1,
              maxValue: 28,
              onChanged: (value) {},
            ),
          ),
          //SizedBox(height: DesktopScreen.isMobile ? 8.px : 13.px),
          SettingsSliderOption(
            title: "Text Font Size",
            currentValue: 23,
            minValue: 1,
            maxValue: 28,
            onChanged: (value) {},
          ),
          // SizedBox(height: DesktopScreen.isMobile ? 8.px : 13.px),
          SettingsDropDownOption(
            title: "Script",
            value: _script,
          ),
          // SizedBox(height: DesktopScreen.isMobile ? 16.px : 25.px),
          SettingsDropDownOption(
            title: "Arabic Font",
            value: _arabicFonts,
          ),
        ],
      ),
    );
  }
}
