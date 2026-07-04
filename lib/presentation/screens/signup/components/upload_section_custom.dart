import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class UploadSectionCustom {
  static Widget buildUploadPicker(double screenWidth,double screenHeight,
      String text
      ) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: Colors.grey.shade300,
        strokeWidth: 1,
        dashPattern: const [
          1.8451579809188843, 4.6128950119018555],
        radius: const Radius.circular(8),
        padding: const EdgeInsets.all(12),
      ),
      child: Container(
        color: AppColors.kLoginBg,
        height: screenHeight*0.21,
        width: screenWidth*0.83 ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight*0.037,
            ),
            Text(text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.kSubTextColor
            ),
            ),
            SizedBox(
              height: screenHeight*0.031,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                size: 22,
                color: AppColors.kPrimaryContainerColor,
              ),
              label:  Text(
                  "Upload Photo",
                  style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: AppColors.kPrimaryContainerColor
                  )
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.kPrimaryContainerColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 8,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}