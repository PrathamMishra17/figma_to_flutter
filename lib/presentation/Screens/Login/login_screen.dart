import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLoginBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.061),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.106),
              Center(child: Logo.centerLogo(radius: 54)),
              SizedBox(height: Get.height * 0.038),
              Text(
                "Login",
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  fontWeight: FontWeight(600),
                  color: AppColors.kDarkText,
                ),
              ),

              SizedBox(height: Get.height * 0.018),
              Text(
                "Phone number/ Employee ID",
                style: GoogleFonts.albertSans(
                  fontWeight: FontWeight(400),
                  fontSize: 16,
                  color: AppColors.kLightText,
                ),
              ),

              SizedBox(height: Get.height * 0.0018),
              SizedBox(
                height: Get.height * 0.055,
                width: Get.width * 0.8778,
                child: AuthField(
                  isPassword: false,
                  fillColor: AppColors.kTestField,
                  disableBorder: true,
                  hintText: "978654320",
                  fontColor: AppColors.kPrimaryContainerColor,
                  fontSize: 16,
                ),
              ),

              Text(
                "Password",
                style: GoogleFonts.albertSans(
                  fontWeight: FontWeight(400),
                  fontSize: 16,
                  color: AppColors.kLightText,
                ),
              ),

              SizedBox(height: Get.height * 0.0018),
              SizedBox(
                height: Get.height * 0.055,
                width: Get.width * 0.8778,
                child: AuthField(
                  isPassword: true,
                  fillColor: AppColors.kTestField,
                  disableBorder: true,
                  trailIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.kLightBlack,
                    size: 17,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.forgotPassScreen);
                    },
                    child: Text("Forgot Password?",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kLangBorderColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kLangBorderColor
                    ),),
                  )
                ],
              ),
              SizedBox(
                height: Get.height*0.115,
              ),
              CustomButton(
                  height: Get.height*0.058 ,
                  width: Get.width*0.91,
                  content: Text("Login",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.kLoginBg
                  ),
                  ),
                  color: AppColors.kPrimaryContainerColor,
              ),
              SizedBox(
                height: Get.height*0.26,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account?",
                 style: GoogleFonts.poppins(
                   fontWeight: FontWeight.w400,
                   fontSize: 14,
                   color: AppColors.kDarkText,
                   decoration : TextDecoration.underline,
                   decorationColor: AppColors.kDarkText
                 ),
                 ),
                 Text("Sign up",
                 style: GoogleFonts.poppins(
                   fontWeight: FontWeight.w600,
                   fontSize: 14,
                   color: AppColors.kPrimaryContainerColor,
                   decoration: TextDecoration.underline,
                   decorationColor: AppColors.kPrimaryContainerColor
                 ),

                 )
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
