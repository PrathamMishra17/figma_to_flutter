import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kLoginBg,
        body: LayoutBuilder(
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
                        SizedBox(height: screenHeight * 0.06),


                        Center(child: Logo.centerLogo(radius: 54)),
                        SizedBox(height: screenHeight * 0.05),


                        Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kDarkText,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.012),


                        Text(
                          "Phone number / Employee ID",
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kLightText,
                          ),
                        ),
                        const SizedBox(height: 5),
                        AuthField(
                          isPassword: false,
                          fillColor: AppColors.kTestField,
                          disableBorder: false,
                          fontColor: AppColors.kPrimaryContainerColor,
                          fontSize: 16,
                        ),
                        SizedBox(height: 5),


                        Text(
                          "Password",
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kLightText,
                          ),
                        ),
                        const SizedBox(height: 8),
                        AuthField(
                          isPassword: false,
                          fillColor: AppColors.kTestField,
                          disableBorder: false,
                          fontColor: AppColors.kPrimaryContainerColor,
                          fontSize: 16,
                          trailIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: AppColors.kLightBlack.withOpacity(0.60),
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 12),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.forgotPassScreen);
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kForgotColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.kForgotColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.10),


                        CustomButton(
                          height: 50,
                          width: double.infinity,
                          content: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          color: AppColors.kPrimaryContainerColor,
                        ),


                        const Spacer(),


                        Padding(
                          padding: const EdgeInsets.only(bottom: 14.0, top: 16.0),
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
                                  Get.offNamed(Routes.signUpOne);
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