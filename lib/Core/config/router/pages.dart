import 'package:figma_to_flutter/export.dart';
import 'package:figma_to_flutter/presentation/screens/GetStarted/lang_select_screen.dart';


class Pages {
  List<GetPage<dynamic>> pages = [
    GetPage(name: Routes.splashScreen, page: ()=> SplashScreen()),
    GetPage(name: Routes.langSelect, page: ()=> LangSelectScreen()),
    GetPage(name: Routes.loginScreen, page: ()=> LoginScreen()),
    GetPage(name: Routes.otpVerScreen, page: ()=> OtpVerification()),
    GetPage(name: Routes.forgotPassScreen, page: ()=> ForgotPassword()),
    GetPage(name: Routes.createNewPass, page: ()=>CreateNewPass())
  ];
}