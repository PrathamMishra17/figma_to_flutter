import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSelect {
  static Widget headerSelection(double screenHeight, double screenWidth){

    return Container(
      height: screenHeight*0.370,
      width: screenWidth*0.91,
      decoration: BoxDecoration(
        gradient: AppGradientColors.kProductHeaderBG,
        borderRadius: BorderRadius.circular(20)
      ),
      child:Padding(padding: EdgeInsets.symmetric(
          horizontal: screenWidth*0.045,
          vertical: screenHeight*0.026
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  height: screenHeight*0.14,
                  width: screenWidth*0.38,
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImagePath.eComUsers,
                        height: screenHeight*0.066,
                        width: screenWidth*0.143,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("E-com Users",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.04,
                        color: AppColors.kLoginBg
                      ),
                      ),
                      Text("2,52,600",
                        style: GoogleFonts.poppins(
                          fontSize: 14.04,
                          fontWeight: FontWeight.w700,
                          color: AppColors.kLangBorderColor
                        ),
                      )
                    ],
                  ),
                  color: AppColors.kHeaderSelectionBg,
                ),
                SizedBox(
                  width: screenWidth*0.041,
                ),
                CustomButton(
                  height: screenHeight*0.14,
                  width: screenWidth*0.38,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImagePath.todayOrders,
                          height: screenHeight*0.066,
                          width: screenWidth*0.143,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text("Total Orders",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.04,
                              color: AppColors.kLoginBg
                          ),
                        ),
                        Text("2,52,600",
                          style: GoogleFonts.poppins(
                              fontSize: 14.04,
                              fontWeight: FontWeight.w700,
                              color: AppColors.kLangBorderColor
                          ),
                        )
                      ],
                    ),
                  color: AppColors.kHeaderSelectionBg,
                )
              ],
            ),

            SizedBox(
              height: screenHeight*0.020,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  height: screenHeight*0.14,
                  width: screenWidth*0.38,
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImagePath.eComUsers,
                        height: screenHeight*0.066,
                        width: screenWidth*0.143,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Active Franchise",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.04,
                            color: AppColors.kLoginBg
                        ),
                      ),
                      Text("2,52,600",
                        style: GoogleFonts.poppins(
                            fontSize: 14.04,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kLangBorderColor
                        ),
                      )
                    ],
                  ),
                  color: AppColors.kHeaderSelectionBg,
                ),
                SizedBox(
                  width: screenWidth*0.041,
                ),
                CustomButton(
                  height: screenHeight*0.14,
                  width: screenWidth*0.38,
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImagePath.todayOrders,
                        height: screenHeight*0.066,
                        width: screenWidth*0.143,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text("Today's Sales",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.04,
                            color: AppColors.kLoginBg
                        ),
                      ),
                      Text("2,52,600",
                        style: GoogleFonts.poppins(
                            fontSize: 14.04,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kLangBorderColor
                        ),
                      )
                    ],
                  ),
                  color: AppColors.kHeaderSelectionBg,
                )
              ],
            ),

          ],
        )
      )
    );

  }
}