import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/data_source/data_list.dart';
import 'package:islamic_desktop_software/presentation/quran/presenter/quran_home_controller.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/setting_tab_button_widget.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingTabButtonSection extends StatelessWidget {
  final QuranHomeController _quranHomeController =
      Get.put(QuranHomeController());

  SettingTabButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kPadding2),
      height: 56.px,
      width: 150.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xffF5FBF9),
        borderRadius: BorderRadius.circular(kRadius10),
        border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(.15),
            width: 2.px),
      ),
      child: Row(
        children: List.generate(
          settingTabButtonText.length,
          (index) => SettingTabButtonWidget(
            title: settingTabButtonText[index].tr,
            index: index,
            onTap: () =>
                _quranHomeController.settingTabCurrentIndex.value = index,
          ),
        ),
      ),
    );
  }
}
