import 'package:figma_to_flutter/export.dart';

class Logo{
  static Widget centerLogo({required double radius}){
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.transparent,
      child: Image.asset(ImagePath.logoPath),
    );
  }

  // static Widget langSelectLogo(){
  //   return CircleAvatar(
  //     radius: 78,
  //     backgroundColor: Colors.transparent,
  //     child: Image.asset(
  //         ImagePath.logoPath,
  //     ),
  //   );
  // }

}