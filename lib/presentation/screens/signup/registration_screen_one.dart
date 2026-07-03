import 'package:figma_to_flutter/presentation/screens/signup/components/dropdown_section.dart';
import 'package:figma_to_flutter/presentation/screens/signup/components/upload_section_dotted.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../export.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => RegistrationController());

    final double screenWidth = Get.width;
    final double screenHeight = Get.height;
    final bool isTablet = screenWidth > 600;
    final double horizontalPadding = screenWidth * 0.05;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              SizedBox(height: screenHeight * 0.030),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kTextHundred,
                    size: 13,
                  ),
                  SizedBox(width: screenWidth * 0.33),
                  Text(
                    "Step 1",
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.061),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "Fill your personal information",
                  style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kDarkText,
                  ),
                ),
                Text(
                  "Enter the details below so we can get to know and serve you better",
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.kSubTextColor
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.013,
                ),
                Text("Your Profile Picture",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kDarkText
                ),
                ),
                SizedBox(
                  height: screenHeight*0.0047,
                ),
                UploadSectionDotted.buildProfilePicker(screenWidth,screenHeight),
                SizedBox(
                  height: screenHeight*0.019,
                ),
               LabelAuthField.buildCustomTextField(
                   label: "Enter Full Name",
                   isRequired: true),

                LabelAuthField.buildCustomTextField(
                    label: "Enter Email Address",
                    isRequired: true),

                LabelAuthField.buildCustomTextField(
                    label: "Enter Phone Number",
                    isRequired: true),

                LabelAuthField.buildCustomTextField(
                    label: "Enter Password",
                    isRequired: true),

                LabelAuthField.buildCustomTextField(
                    label: "Enter Confirm Password",
                    isRequired: true),
                const SizedBox(
                  height: 3,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Gender",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kLightText
                    ),
                    ),
                    SizedBox(
                      width: screenWidth*0.38,
                    ),
                    Text("Age",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kLightText
                      ),
                    ),

                  ],

                ),
                GenderAndAgeSelectionSection(controller: controller)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
