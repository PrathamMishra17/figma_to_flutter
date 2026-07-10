import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class VariableCollection {
  static Widget variableSelection(
      double screenHeight,
      double screenWidth,
      String text1,
      String text2,
      String  imagePath
      ){
    return CustomButton(
      height: screenHeight*0.094,
      width: screenWidth*0.20,
      borderColor: AppColors.kLightText,
      color: AppColors.kChildHeaderBG.withAlpha(10),
        content: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const SizedBox(
                height: 12,
              ),
              Image.asset(imagePath,
                height: 24,
                width: 24,
                color: AppColors.kLightBlack,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1,
                    style:  GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.kDarkText
                    ),
                  ),
                  Text(text2,
                    style:GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.kDarkText
                    ) ,
                  )
                ],
              )
            ],
          ),
    )
    );
  }
}