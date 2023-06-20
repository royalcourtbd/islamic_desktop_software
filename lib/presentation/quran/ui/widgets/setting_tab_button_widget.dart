import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/presentation/quran/presenter/quran_home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingTabButtonWidget extends StatelessWidget {
  final QuranHomeController _quranHomeController =
      Get.put(QuranHomeController());
  final String title;

  final VoidCallback? onTap;

  final int? index;
  SettingTabButtonWidget(
      {super.key, required this.title, this.onTap, this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: radius6,
              color: _quranHomeController.settingTabCurrentIndex.value == index
                  ? Theme.of(context).primaryColor
                  : null,
            ),
            child: Text(
              title.tr,
              style: TextUtils.bodyTitleText(
                  fontWeight:
                      _quranHomeController.settingTabCurrentIndex.value == index
                          ? FontWeight.w600
                          : FontWeight.w400,
                  fontSize: 16.px,
                  color:
                      _quranHomeController.settingTabCurrentIndex.value == index
                          ? DesktopAppColors.whiteColor
                          : DesktopAppColors.subTitleColor),
            ),
          ),
        ),
      ),
    );
  }
}
