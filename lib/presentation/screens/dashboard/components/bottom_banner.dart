import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBanner {
  static Widget bottomBanner(double screenHeight, double screenWidth){
    return Container(
      height: screenHeight*0.21134,
      width: screenWidth*0.908,
      color: AppColors.kPrincipalColor,
      child:Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.0305),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight*0.0123,
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [

             Text("User ID",
             style: GoogleFonts.poppins(
               fontSize: 13.27,
               fontWeight: FontWeight.w400,
               color: AppColors.kDarkText
             ),
             ),
             Text("#AB2392U8293",
             style: GoogleFonts.poppins(
               fontWeight: FontWeight.w400,
               fontSize: 13.27,
               color: AppColors.kPrimaryContainerColor
             ),
             ),
             SizedBox(
               width: screenWidth*0.419,
             ),
             Image.asset(ImagePath.vectors,
             height: screenHeight*0.0156,
               color: AppColors.kLightBlack,
             )
           ],
         ),
          SizedBox(
            height: screenHeight*0.0143,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",
                    style: GoogleFonts.poppins(
                        fontSize: 11.37,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kText93Colors
                    ),
                  ),
                  Text("Nupur Kadam",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.27,
                      color: AppColors.kDarkText
                    ),
                  )
                ],
              ),
              SizedBox(
                width: screenWidth*0.171,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Location",
                    style: GoogleFonts.poppins(
                        fontSize: 11.37,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kText93Colors
                    ),
                  ),
                  Text("Mira Road, Thane",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.27,
                        color: AppColors.kDarkText
                    ),
                  )
                ],
              ),

            ],
          ),
          SizedBox(
            height: screenHeight*0.01106,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Products",
                    style: GoogleFonts.poppins(
                        fontSize: 11.37,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kText93Colors
                    ),
                  ),
                  Text("965",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.27,
                        color: AppColors.kDarkText
                    ),
                  )
                ],
              ),
              SizedBox(
                width: screenWidth*0.171,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Revenue generated",
                    style: GoogleFonts.poppins(
                        fontSize: 11.37,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kText93Colors
                    ),
                  ),
                  Text("₹ 9,265",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.27,
                        color: AppColors.kDarkText
                    ),
                  )
                ],
              ),

            ],
          ),
          SizedBox(
            height: screenHeight*0.01106,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Units sold",
                    style: GoogleFonts.poppins(
                        fontSize: 11.37,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kText93Colors
                    ),
                  ),
                  Text("5966",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.27,
                        color: AppColors.kDarkText
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      ),
      )
    );
  }
}