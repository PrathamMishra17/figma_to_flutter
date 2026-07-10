import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class RevenueBanner {
  static Widget revenueBanner(double screenHeight, double screenWidth){
    return Container(
      width: screenWidth*0.906,
      height: screenHeight*0.240,

      decoration: BoxDecoration(
          color: AppColors.kPrincipalColor,
        borderRadius: BorderRadius.circular(11.05),
        border: Border.all(
          color:AppColors.kBorderWhite,
          width: 0.55,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight*0.0241,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.028),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Total Revenue",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kDarkText
                ),
              ),
              SizedBox(
                width: screenWidth*0.36,
              ),
              Image.asset(ImagePath.exports,
              width: 90,
                height: 25,
              )
            ],
          ),
          ),

         const SizedBox(
            height: 16.44,
          ),
          Image.asset(ImagePath.revenueGraph,
          width: screenWidth*0.83,
            height: screenHeight*0.133,
          )
        ],
      ),
    );
  }
}