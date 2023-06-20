import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:islamic_desktop_software/data/data_source/data_list.dart';
import 'package:islamic_desktop_software/presentation/quran/presenter/quran_home_controller.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/quran_tab_button_widget.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class QuranTabButtonSection extends StatelessWidget {
  final QuranHomeController _quranHomeController =
      Get.put(QuranHomeController());

  QuranTabButtonSection({
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
        color: DesktopAppColors.whiteColor,
        borderRadius: BorderRadius.circular(kRadius10),
        border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(.15),
            width: 2.px),
      ),
      child: Row(
        children: List.generate(
          quranTabButtonText.length,
          (index) => QuranTabButtonWidget(
            title: quranTabButtonText[index].tr,
            index: index,
            onTap: () =>
                _quranHomeController.quranTabCurrentIndex.value = index,
          ),
        ),
      ),
    );
  }
}
