import 'package:figma_to_flutter/export.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: Get.width*0.061),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: Get.height*0.106,
             ),
            Center(
             child:  Logo.centerLogo(radius: 54),
            ),
             SizedBox(
               height: Get.height*0.038,
             ),
            Text("Login",
                 style: GoogleFonts.poppins(
                     fontSize: 21,
                     fontWeight: FontWeight(600),
                     color: AppColors.kDarkText
                 ),
               ),

             SizedBox(
               height: Get.height*0.018,
             ),
             Text("Phone number/ Employee ID",
               style:  GoogleFonts.albertSans(
                   fontWeight: FontWeight(400),
                   fontSize: 16,
                   color: AppColors.kLightText
               ),
             ),


             SizedBox(height: Get.height * 0.0018),
             AuthField(isPassword: false),

            Text("Password",
                 style:  GoogleFonts.albertSans(
                     fontWeight: FontWeight(400),
                     fontSize: 16,
                     color: AppColors.kLightText
                 ),
               ),

             SizedBox(height: Get.height * 0.0018),
             AuthField(isPassword: true),

           ],
         ),
        )
      ),
    );
  }
}