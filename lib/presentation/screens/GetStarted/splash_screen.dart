


import '../../../export.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradientColors.kSplashScreenBG
        ),
        child: Center(
          child: Logo.centerLogo(radius: 78)
        ),
      )
    );
  }
}