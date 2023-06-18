import 'dart:developer';
import 'dart:ui';
import 'package:get/get.dart';

class HomeController extends GetxController {
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

  double get searchBoxWidth {
    const double twoPercent = .3;
    final double boxWidth = width.value >= 1920
        ? 620
        : width.value >= 1200
            ? 520
            : width.value * twoPercent;
    return boxWidth;
  }

  double get onePercentWidth {
    const double onePercent = 0.1;
    final double boxWidth =
        width.value >= 1600 ? 160 : (width.value * onePercent);
    return boxWidth;
  }

  bool toggleFullScreen() {
    final RxBool isFullScreen = true.obs;
    isFullScreen.value = width.value >= 1600 ? true : false;

    return isFullScreen.value;
  }

  get isFullScreen => toggleFullScreen();

  get fullScreen {
    return isFullScreen == true ? 160.0 : null;
  }

  double get zeroTwoPercentWidth {
    const double zeroTwoPercent = 0.01;
    final double boxWidth =
        width.value >= 1600 ? 37 : (width.value * zeroTwoPercent);
    return boxWidth;
  }

  double get zeroOnePercentWidth {
    const double zeroOnePercent = 0.01;
    final double boxWidth =
        width.value >= 1600 ? 37 : (width.value * zeroOnePercent);
    return boxWidth;
  }
}
