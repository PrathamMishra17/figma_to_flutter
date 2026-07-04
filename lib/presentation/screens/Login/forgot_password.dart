import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: AppColors.kLoginBg,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(

                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.061),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.125),

                        Text(
                          "Forgot Password",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kDarkText,
                          ),
                        ),
                         SizedBox(height:screenHeight*0.01 ),


                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kSubTextColor,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),


                        Text(
                          "Enter Phone number",
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kLightText,
                          ),
                        ),
                       SizedBox(height: screenHeight*0.0128),


                        AuthField(
                          isPassword: false,
                          fillColor: AppColors.kTestField,
                          disableBorder: false,
                          fontColor: AppColors.kPrimaryContainerColor,
                          fontSize: 16,
                        ),


                       SizedBox(
                         height: screenHeight*0.32,
                       ),


                        CustomButton(
                          height: 50,
                          width: double.infinity,
                          onTap: () {
                            Get.toNamed(Routes.otpVerScreen);
                          },
                          content: Text(
                            "Send OTP",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.kLoginBg,
                            ),
                          ),
                          color: AppColors.kPrimaryContainerColor,
                        ),


                        Padding(
                          padding: const EdgeInsets.only( top: 44.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account ? ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: AppColors.kDarkText,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.kDarkText,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                    Get.toNamed(Routes.signUpOne);
                                },
                                child: Text(
                                  "Sign up",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: AppColors.kPrimaryContainerColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.kPrimaryContainerColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}