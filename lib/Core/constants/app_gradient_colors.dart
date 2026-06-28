import 'package:figma_to_flutter/export.dart';

class AppGradientColors {
  static const kSplashScreenBG = LinearGradient(colors: [
    AppColors.kBackgroundCream,
    AppColors.kBackgroundBlue,
  ],

   begin: Alignment(0, -0.008),
    end: Alignment(0,1.5)
  );
}