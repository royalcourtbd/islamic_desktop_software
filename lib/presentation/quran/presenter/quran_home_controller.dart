import 'dart:developer';
import 'dart:ui';

import 'package:get/get.dart';

class QuranHomeController extends GetxController {
  final RxDouble width = 0.0.obs;
  final RxDouble height = 0.0.obs;

  void observeScreenSize() {
    FlutterView window = Get.window;
    final Size screenSize = window.physicalSize / window.devicePixelRatio;
    width.value = screenSize.width;
    height.value = screenSize.height;
    log('Screen Width: ${screenSize.width}');
    log('Screen Height: ${screenSize.height}');
  }

  double get twoPercentWidth {
    const double twoPercent = 0.2;
    final double boxWidth =
        width.value >= 1600 ? 320 : (width.value * twoPercent);
    return boxWidth;
  }

  double get onePercentWidth {
    const double onePercent = 0.1;
    final double boxWidth =
        width.value >= 1600 ? 160 : (width.value * onePercent);
    return boxWidth;
  }
  double get zeroTwoPercentWidth {
    const double zeroTwoPercent = 0.02;
    final double boxWidth =
        width.value >= 1600 ? 37 : (width.value * zeroTwoPercent);
    return boxWidth;
  }
}
