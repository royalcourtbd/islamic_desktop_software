import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/data_source/data_list.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_drop_down_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_toggle_option.dart';

class ReadingSettingsContent extends StatelessWidget {
  const ReadingSettingsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsDropDownOption(
          title: 'Language',
          value: language,
        ),
        gapH20,
        SettingsDropDownOption(
          title: 'Translation',
          value: translation,
        ),
        gapH20,
        SettingsDropDownOption(
          title: 'Script',
          value: script,
        ),
        gapH20,
        SettingsDropDownOption(
          title: 'Tafseer',
          value: tafsir,
        ),
        gapH20,
        SettingsToggleOption(
          title: 'Signle Page Tafsir',
          onToggle: (value) {},
          toggled: false,
        ),
        gapH20,
        SettingsToggleOption(
          title: 'Show By Words',
          onToggle: (value) {},
          toggled: false,
        ),
        gapH20,
        SettingsToggleOption(
          title: 'Show Tazweed',
          onToggle: (value) {},
          toggled: false,
        ),
      ],
    );
  }
}
