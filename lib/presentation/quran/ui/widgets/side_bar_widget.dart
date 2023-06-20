import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/config/pro_colors.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/presentation/common/global_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SideBarWidget extends StatelessWidget {
  SideBarWidget({
    super.key,
  });

  final GlobalController _globalController = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    _globalController.observeScreenSize();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.px),
      width: _globalController.width.value <= 1200 ? 75 : 91,
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Container(
              width: 60.px,
              height: 60.px,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kRadius14),
                color: Theme.of(context).primaryColor.withOpacity(0.1),
              ),
              child: Padding(
                padding: paddingAll20,
                child: SvgPicture.asset(
                  SvgPath.icArrowLeft,
                ),
              ),
            ),
          ),
          gapH14,
          Text(
            'Menubar'.tr,
            style: TextUtils.mediumText(
                color: DesktopAppColors.boldTitleColor.withOpacity(0.5)),
          ),
          Column(
            children: List.generate(
              menuIconList.length,
              (index) => InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () => sideBarItemTap(index),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.px),
                  child: SizedBox(
                    height: 60,
                    child: SvgPicture.asset(
                      menuIconList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            decoration: const BoxDecoration(
              border:
                  Border(top: BorderSide(color: Color(0xffEAECF0), width: 2)),
            ),
            child: Image.asset(
              SvgPath.icProfileImage,
            ),
          ),
        ],
      ),
    );
  }

  sideBarItemTap(int index) {
    debugPrint(index.toString());
  }
}

List<String> menuIconList = [
  SvgPath.icHome,
  SvgPath.icOpenBook,
  SvgPath.icPlane,
];
