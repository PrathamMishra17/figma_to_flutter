import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class LangSelect extends StatelessWidget {
  const LangSelect({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height*0.21,
                ),
                Logo.centerLogo(radius: 90),
                SizedBox(
                  height: Get.height*0.065,
                ),

                CustomButton(
                  height: Get.height*0.052,
                  width: Get.width*0.8778,
                  borderColor: AppColors.kLangBorderColor,
                  color: AppColors.kPrincipalColor,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Padding(padding: EdgeInsets.only(left: 22,),
                      child: Text("Select Language",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight(400),
                          color: AppColors.kSubTextColor
                        ),

                      ),
                     ),
                      
                      Padding(padding: EdgeInsetsGeometry.only(left: 200),
                      child: Icon(Icons.arrow_forward_ios_outlined, size: 13,color: Colors.black38,),

                      ),

                    ],
                  )
                ),

                SizedBox(
                  height: Get.height*0.35,
                ),

               Padding(padding:EdgeInsetsGeometry.only(bottom: Get.height*0.0915),

               child:  CustomButton(
                 height: Get.height*0.052,
                 width: Get.width*0.8778,
                 onTap: (){
                   Get.offNamed(Routes.loginScreen);
                 },
                 content: Text("Continue",
                   style: GoogleFonts.nunitoSans(
                       fontWeight: FontWeight(600),
                       fontSize: 18,
                       color: AppColors.kPrimaryText
                   ),

                 ),
                 color: AppColors.kPrimaryContainerColor,
               )
                 ,
               )
              ],
            ),

          )
        )
      )
    );
  }
}
