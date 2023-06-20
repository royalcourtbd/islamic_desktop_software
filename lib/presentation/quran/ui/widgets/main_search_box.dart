import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/presentation/common/global_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainSearchBox extends StatelessWidget {
  MainSearchBox({
    super.key,
  });

  final GlobalController _globalController = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    _globalController.observeScreenSize();
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE1E5ED),
          width: 2.px,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      width: _globalController.searchBoxWidth,
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color(0xffF3F5F9),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(
              SvgPath.icSearch,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              SvgPath.icFilter,
            ),
          ),
          filled: true,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: 'Search Sura, Juz, Para, Page'.tr,
          hintStyle: TextUtils.searchBoxText(),
        ),
      ),
    );
  }
}
