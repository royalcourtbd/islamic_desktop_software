import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_card_header.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_container.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_drop_down_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_toggle_option.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationSettingsCard extends StatelessWidget {
  final List<String> value = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  NotificationSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          const SettingsCardHeader(
            title: "Notification Settings",
            svgPath: SvgPath.icArrowRight,
          ),
          SizedBox(height: 25.px),
          SettingsToggleOption(
            title: "Daily Notification Update",
            onToggle: (bool toggled) {},
            toggled: true,
          ),
          SizedBox(height: 20.px),
          SettingsDropDownOption(
            title: "Time of Notifications",
            value: value,
          ),
        ],
      ),
    );
  }
}
