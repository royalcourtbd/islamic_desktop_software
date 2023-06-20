import 'package:flutter/material.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/data_source/data_list.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_drop_down_option.dart';
import 'package:islamic_desktop_software/presentation/settings/settings_slider_option.dart';

class FontSettingsContent extends StatelessWidget {
  const FontSettingsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsDropDownOption(
          title: 'Select Arabic Font',
          value: fontList,
        ),
        gapH20,
        SettingsSliderOption(
          title: 'Arabic Font Size',
          currentValue: 22,
          minValue: 18,
          maxValue: 40,
          onChanged: (value) {},
        ),
        gapH20,
        SettingsSliderOption(
          title: 'Translation Font Size',
          currentValue: 22,
          minValue: 18,
          maxValue: 40,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
