import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.061),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.16),
              Text(
                "Create a new Password",
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
                "Enter New Password",
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
                height: Get.height * 0.065,
                width: Get.width * 0.88,
                child: AuthField(
                  disableBorder: true,
                  isPassword: true,
                  fillColor: AppColors.kTestField,
                ),
              ),

              Text(
                "Re-Enter New Password",
                style: GoogleFonts.albertSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.kLightText,
                ),
              ),


              SizedBox(
                height: Get.height * 0.10,
                width: Get.width * 0.88,
                child: AuthField(
                  disableBorder: true,
                  isPassword: false,
                  fillColor: AppColors.kTestField,
                ),
              ),

              SizedBox(height: Get.height * 0.30),

              CustomButton(
                height: Get.height * 0.058,
                width: Get.width * 0.91,
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
            ],
          ),
        ),
      ),
    );
  }
}
