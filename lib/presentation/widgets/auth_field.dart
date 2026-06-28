import 'package:figma_to_flutter/export.dart';

class AuthField extends StatelessWidget{
  final String? hintText;
  final Icon? leadIcon;
  final Icon? trailIcon;
  final bool isPassword;
  const AuthField({
    super.key,
     this.hintText,
     this.leadIcon,
     this.trailIcon,
     required this.isPassword
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword ,

      decoration: InputDecoration(
        hintText:hintText ,
        prefix: leadIcon,
        suffixIcon: trailIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),

      ),


    );
  }
}