import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class OrdersBanner {
  static Widget orderBanner(double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*0.4906,
      width: screenWidth*0.903,
      decoration: BoxDecoration(
        color:  AppColors.kOrderBannerBg,
        borderRadius: BorderRadius.circular(18.11),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight*0.0282,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.06106),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(ImagePath.exports,
                height: 31,
                  width: 84,
                ),
                SizedBox(
                  width: screenWidth*0.238,
                ),
                
                Image.asset(ImagePath.monthButton,
                  height: 31,
                  width: 122,
                ),

              ],
            ),
          ),
          SizedBox(
            height: screenHeight*0.0282,
          ),
          Text("Top Districts Head by Order Volume",
          style: GoogleFonts.poppins(
              fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.kDarkText
          ),
          ),
          SizedBox(
            height: screenHeight*0.308,
          ),
          Image.asset(ImagePath.viewReportButton,
          height: 36,
            width: 311,
          )
        ],
      ),
    );
  }
}