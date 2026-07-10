

import '../../../export.dart';




class Pages {
  List<GetPage<dynamic>> pages = [
    GetPage(name: Routes.splashScreen, page: ()=> SplashScreen()),
    GetPage(name: Routes.langSelect, page: ()=> LangSelectScreen()),
    GetPage(name: Routes.loginScreen, page: ()=> LoginScreen()),
    GetPage(name: Routes.otpVerScreen, page: ()=> OtpVerification()),
    GetPage(name: Routes.forgotPassScreen, page: ()=> ForgotPassword()),
    GetPage(name: Routes.createNewPass, page: ()=>CreateNewPass()),
    GetPage(name: Routes.signUpOne, page: ()=>RegistrationScreen()),
    GetPage(name: Routes.registrationScreenTwo, page:()=> RegistrationScreenTwo()),
    GetPage(name: Routes.registrationScreenThree, page:()=>RegistrationScreenThree()),
    GetPage(name: Routes.dashboardScreen, page: ()=> DashBoardScreen())
  ];
}