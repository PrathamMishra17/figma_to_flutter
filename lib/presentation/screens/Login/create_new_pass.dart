import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});

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
                          "Create a new password",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kDarkText,
                          ),
                        ),
                        SizedBox(height: screenHeight*0.0070),


                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kSubTextColor,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.013),


                        Text(
                          "Enter New Password",
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kLightText,
                          ),
                        ),

                        SizedBox(height: screenWidth * 0.013),
                        AuthField(
                          isPassword: false,
                          fillColor: AppColors.kTestField,
                          disableBorder: false,
                          fontColor: AppColors.kPrimaryContainerColor,
                          fontSize: 16,
                        ),

                        SizedBox(height: screenHeight * 0.0165),


                        Text(
                          "Re-Enter New Password",
                          style: GoogleFonts.albertSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.kLightText,
                          ),
                        ),

                        SizedBox(height: screenWidth * 0.013),
                        AuthField(
                          isPassword: false,
                          fillColor: AppColors.kTestField,
                          disableBorder: false,
                          fontColor: AppColors.kPrimaryContainerColor,
                          fontSize: 16,

                        ),


                       SizedBox(
                         height: screenHeight*0.30,
                       ),


                        Padding(
                          padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
                          child: CustomButton(
                            height: 50,
                            width: double.infinity,
                            onTap: () {

                            },
                            content: Text(
                              "Done",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: AppColors.kLoginBg,
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