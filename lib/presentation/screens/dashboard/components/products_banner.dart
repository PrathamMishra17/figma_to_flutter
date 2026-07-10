import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsBanner {
  static Widget productBanner(double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*0.448,
      width: screenWidth*0.90,
     
      decoration: BoxDecoration(
        color: AppColors.kPrincipalColor,
        borderRadius: BorderRadius.circular(18.11)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight*0.0334,
          ),
         Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.04965),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text("Top Products",
             style: GoogleFonts.poppins(
               fontWeight: FontWeight.w600,
               fontSize: 20,
               color: AppColors.kDarkText
             ),
             ),
             SizedBox(
               width: screenWidth*0.132,
             ),
             Image.asset(ImagePath.monthButton,
              height: screenHeight*0.0364,
               width: screenWidth*0.3104,
             )
           ],
         ),
         ),
          SizedBox(
            height: screenHeight*0.0293,
          ),
          syrup(screenHeight, screenWidth),
          SizedBox(
            height: screenHeight*0.033,
          ),
         syrup(screenHeight, screenWidth),
          SizedBox(
            height: screenHeight*0.033,
          ),
         syrup(screenHeight,screenWidth)
        ],
      ),
    );
  }

 static Widget syrup(double screenHeight, double screenWidth){
    return  Padding(padding: EdgeInsets.symmetric(horizontal:screenWidth*0.04965 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(ImagePath.syrup,
            height: screenHeight*0.0821,
            width: screenWidth*0.178,
          ),

          Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.0040, ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Vdramrut syrup",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kDarkText
                      ),
                    ),
                    Text("(Scortip Healthcare)",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: AppColors.kSubTextColor
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text("5,562 sold",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: AppColors.kLangBorderColor
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text("₹240",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.kDarkText
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );

  }
}
