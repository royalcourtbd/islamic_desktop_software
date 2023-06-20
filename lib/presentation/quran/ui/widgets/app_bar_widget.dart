import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic_desktop_software/core/assets/svg_path.dart';
import 'package:islamic_desktop_software/core/ui_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_desktop_software/presentation/home/presenter/home_controller.dart';
import 'package:islamic_desktop_software/presentation/quran/ui/widgets/main_search_box.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required HomeController homeController,
  }) : _homeController = homeController;

  final HomeController _homeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kRadius10),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2.px,
                  ),
                ),
                child: Image.asset(
                  SvgPath.icQuranApp,
                  width: 50,
                  height: 50,
                ),
              ),
              gapW14,
              _homeController.width.value <= 820
                  ? SizedBox.fromSize()
                  : Text(
                      'Quran Mazid'.tr,
                      style: TextUtils.boldText(),
                    ),
              _homeController.width.value <= 800
                  ? const SizedBox.shrink()
                  : gapW14,
              SvgPicture.asset(
                SvgPath.icArrowDown,
              ),
            ],
          ),
          MainSearchBox(),
          Row(
            children: [
              SvgPicture.asset(
                SvgPath.icSettings,
                height: 38.px,
              ),
              gapW30,
              Container(
                padding: paddingAll10,
                height: 48.px,
                width: _homeController.fullScreen,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.px),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _homeController.isFullScreen
                        ? const Text(
                            'Support Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const SizedBox.shrink(),
                    SvgPicture.asset(
                      SvgPath.icSupport,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
