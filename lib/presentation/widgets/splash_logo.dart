import 'package:figma_to_flutter/export.dart';

class Logo{
  static Widget centerLogo({required double radius}){
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.transparent,
      child: Image.asset(ImagePath.logoPath),
    );
  }


}