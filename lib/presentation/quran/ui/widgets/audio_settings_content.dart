import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/data_source/data_list.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_drop_down_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_toggle_option.dart';

class AudioSettingsContent extends StatelessWidget {
  const AudioSettingsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsDropDownOption(
          title: 'Select Reciter',
          value: popularReciters,
        ),
        gapH20,
        SettingsToggleOption(
          title: 'Auto Scroll',
          onToggle: (value) {},
          toggled: true,
        ),
        gapH20,
        SettingsToggleOption(
          title: 'Word Click',
          onToggle: (value) {},
          toggled: false,
        ),
        gapH20,
        SettingsDropDownOption(
          title: 'Playback Speed',
          value: playBackSpeedList,
        ),
      ],
    );
  }
}
