import 'package:google_fonts/google_fonts.dart';

import '../../../export.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => RegistrationController());

    final double screenWidth = Get.width;
    final double screenHeight = Get.height;

    return SafeArea(
      child: Scaffold(
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
                 },
                     icon:  Icon(
                       Icons.arrow_back_ios,
                       color: AppColors.kTextHundred,
                       size: 13,
                     )),
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
                    color: AppColors.kSubTextColor,
                  ),
                ),
                SizedBox(height: screenHeight * 0.013),
                Text(
                  "Your Profile Picture",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kDarkText,
                  ),
                ),
                SizedBox(height: screenHeight * 0.0047),
                UploadSectionDotted.buildProfilePicker(
                  screenWidth,
                  screenHeight,
                ),
                SizedBox(height: screenHeight * 0.019),
                LabelAuthField.buildCustomTextField(
                  label: "Enter Full Name",
                  isRequired: true,
                  hint: "Nikita Salunke"
                ),

                LabelAuthField.buildCustomTextField(
                  label: "Enter Email Address",
                  isRequired: true,
                  hint: "nikitasalunke1233@gmail.com"
                ),

                LabelAuthField.buildCustomTextField(
                  label: "Enter Phone Number",
                  isRequired: true,
                  hint: "+91 5050000010"
                ),

                LabelAuthField.buildCustomTextField(
                  label: "Enter Password",
                  isRequired: true,

                ),

                LabelAuthField.buildCustomTextField(
                  label: "Enter Confirm Password",
                  isRequired: true,
                ),
                const SizedBox(height: 3),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kLightText,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.38),
                    Text(
                      "Age",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kLightText,
                      ),
                    ),
                  ],
                ),
                GenderAndAgeSelectionSection(controller: controller),

                SizedBox(height: screenHeight * 0.022),

                Text(
                  "Date of birth",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: AppColors.kLightText,
                  ),
                ),

                SizedBox(height: screenHeight * 0.012),

                DobSelectionField(controller: controller),

                SizedBox(height: screenHeight * 0.029),
                Text(
                  "Contact Details",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kDarkText,
                  ),
                ),

                SizedBox(height: screenHeight * 0.019),

                LabelAuthField.buildCustomTextField(
                  label: "Alternate Phone Number (optional)",
                  isRequired: false,
                  hint: "9090909099"
                ),

                LabelAuthField.buildCustomTextField(
                  label: "Official Email (optional)",
                  isRequired: false,
                  hint: "nikitasalunke@gmail.com"
                ),

                const SizedBox(height: 8),

                Text(
                  "Add Location",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kDarkText,
                  ),
                ),

                SizedBox(height: screenHeight * 0.019),

                LabelAuthField.buildCustomTextField(
                  label: "State",
                  isRequired: true,
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.kSubTextColor,
                  ),
                  hint: "e.g. Mahahrashtra"
                ),
                LabelAuthField.buildCustomTextField(
                  label: "District",
                  isRequired: true,
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.kSubTextColor,
                  ),
                  hint: "e.g. Pune"
                ),
                LabelAuthField.buildCustomTextField(
                  label: "Enter Pincode",
                  isRequired: true,
                  hint: "Enter Pincode"
                ),

                SizedBox(height: screenHeight * 0.125),

                CustomButton(
                  height: screenHeight * 0.059,
                  width: double.infinity,
                  color: AppColors.kPrimaryContainerColor,
                  onTap: (){
                    Get.toNamed(Routes.registrationScreenTwo,
                    );
                  },
                  content: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.kLoginBg,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),

                Text(
                  "”By creating an account ,you agree to Vedriti’s Terms os service and Privacy Policy.” ",

                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kSubTextColor
                  ),
                ),
               const  SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
