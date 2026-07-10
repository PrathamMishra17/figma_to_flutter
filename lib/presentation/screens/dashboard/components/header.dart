import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class Header {
  static Widget headerBoard(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.115,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.kLoginBg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: screenWidth*0.05,),
          Logo.centerLogo(radius: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Good Morning!",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.kSubTextColor,
                ),
              ),
              Text(
                "Nupur kadam",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kDarkText,
                ),
              ),
            ],
          ),
          SizedBox(width: screenWidth * 0.30),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              color: AppColors.kBorderNotification,
              fontWeight: FontWeight.w100,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  static Widget productHeader(double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*0.13,
      width: screenWidth*0.91,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: AppGradientColors.kProductHeaderBG
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImagePath.medicineLogoPath,height: 92, width: 92,),

        const SizedBox(
          width: 10,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total Products",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  letterSpacing: -0.32,
                  color: AppColors.kLoginBg
              ),
            ),

            Text("2,52,600",
              style: GoogleFonts.poppins(
                fontSize: 20,
                letterSpacing: -0.32,
                fontWeight: FontWeight.w700,
                color: AppColors.kLangBorderColor
              ),
            )
          ],
        )
        ],
      ),
    );
  }
}
