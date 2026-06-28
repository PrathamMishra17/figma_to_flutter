import 'dart:async';

import 'package:figma_to_flutter/export.dart';

class SplashScreenController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashScreenFlash();
  }

  void splashScreenFlash(){
    Timer(const Duration(seconds: 2), (){
      Get.offNamed(Routes.langSelect);
    });
  }
}