import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget{
  const ForgotPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kLoginBg,
        body:SingleChildScrollView(
          child:  Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: Get.width * 0.061),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.20),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kDarkText,
                  ),
                ),
                SizedBox(height: Get.height * 0.007),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.kSubTextColor,
                  ),
                ),
                SizedBox(height: Get.height * 0.019),
                Text(
                  "Enter Phone number",
                  style: GoogleFonts.albertSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.kLightText,
                  ),
                ),
                SizedBox(
                  height: Get.height*0.007,
                ),
                SizedBox(
                  height: Get.height * 0.10,
                  width: Get.width * 0.88,
                  child: AuthField(
                    disableBorder: true,
                    isPassword: false,
                    fillColor: AppColors.kTestField,
                    hintText: "9876543210",
                    fontColor: AppColors.kPrimaryContainerColor,
                  ),
                ),

                SizedBox(
                  height: Get.height*0.35,
                ),

                CustomButton(
                  height: Get.height*0.058 ,
                  width: Get.width*0.91,
                  onTap: (){
                    Get.toNamed(Routes.otpVerScreen);
                  },
                  content: Text("Verify",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.kLoginBg
                    ),
                  ),
                  color: AppColors.kPrimaryContainerColor,
                ),

                SizedBox(
                  height: Get.height*0.05,
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
        )
    );
  }
}