import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class LangSelectScreen extends StatelessWidget {
  const LangSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: AppColors.kPrimaryBgColor,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: screenHeight * 0.15),


                        Logo.centerLogo(radius: 78),
                        SizedBox(height: screenHeight * 0.065),


                        CustomButton(
                          height: 46,
                          width: double.infinity,
                          borderColor: AppColors.kLangBorderColor,
                          color: AppColors.kPrincipalColor,
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "Select Language",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.kSubTextColor,
                                  ),
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 13,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ),


                        const Spacer(),


                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight * 0.05, top: 16),
                          child: CustomButton(
                            height: 45,
                            width: double.infinity,
                            onTap: () {
                              Get.offNamed(Routes.loginScreen);
                            },
                            content: Text(
                              "Continue",
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColors.kPrimaryText,
                              ),
                            ),
                            color: AppColors.kPrimaryContainerColor,
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