import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreenThree extends StatelessWidget{
  const RegistrationScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    final double screenWidth = Get.width;
    final double screenHeight = Get.height;
    return SafeArea(
        child:Scaffold(
            backgroundColor: AppColors.kLoginBg,
            appBar: AppBar(
              backgroundColor:AppColors.kLoginBg,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Column(
                children: [
                  SizedBox(height: screenHeight * 0.030),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.back();
                      }, icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.kTextHundred,
                        size: 13,
                      ),),
                      SizedBox(width: screenWidth * 0.33),
                      Text(
                        "Step 3",
                        style: GoogleFonts.poppins(
                          color: AppColors.kTextHundred,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.04 > 16
                              ? 16
                              : screenWidth * 0.04,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2.0),
                child: Container(
                  color: AppColors.kBorderSignUpColor.withAlpha(100),
                  height: 2,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.061),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight*0.020,
                    ),
                    Text("Upload document",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: AppColors.kLightBlack
                      ),
                    ),
                    SizedBox(
                      height: screenHeight*0.017,
                    ),
                    Text("PAN card details",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.kLightBlack
                      ),
                    ),

                    SizedBox(
                      height: screenHeight*0.010,
                    ),

                    Text("Upload focused photo of your PAN Card for faster verification",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kBorderSignUpColor
                      ),
                    ),
                    SizedBox(
                      height: screenHeight*0.017,
                    ),

                    UploadSectionCustom.buildUploadPicker(
                        screenWidth,
                        screenHeight,
                        "Front side photo of your PAN Card with your clear name and photo"
                    ),
                    SizedBox(
                      height: screenHeight*0.304,
                    ),

                    CustomButton(
                        height: screenHeight*0.053,
                        width: double.infinity,
                        color: AppColors.kPrimaryContainerColor,
                        content: Text("Continue",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.kPrincipalColor
                          ),
                        ),
                      onTap: (){
                          Get.toNamed(Routes.dashboardScreen);
                      },
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}