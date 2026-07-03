import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../export.dart';

class UploadSectionDotted {
  static Widget buildProfilePicker(double screenWidth,double screenHeight) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: Colors.grey.shade300,
        strokeWidth: 1,
        dashPattern: const [2,5],
        radius: const Radius.circular(8),
        padding: const EdgeInsets.all(12),
      ),
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Icon(
              Icons.person_rounded,
              color: AppColors.kSubTextColor,
              size: screenHeight * 0.08,
            ),

             SizedBox(width: screenWidth*0.095),
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
