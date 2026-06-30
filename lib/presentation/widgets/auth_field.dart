import 'package:figma_to_flutter/export.dart';

class AuthField extends StatelessWidget {
  final String? hintText;
  final Icon? leadIcon;
  final Icon? trailIcon;
  final bool isPassword;
  final Color? fillColor;
  final VoidCallback? onTrailIconTap;
  final double? fontSize;
  final Color? fontColor;
  final bool disableBorder;

  const AuthField({
    super.key,
    this.hintText,
    this.leadIcon,
    this.trailIcon,
    this.fillColor,
    this.onTrailIconTap,
    this.fontSize,
    this.fontColor,
    required this.disableBorder,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    final activeBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Theme.of(context).dividerColor, width: 1.0),
    );

    return TextField(
      obscureText: isPassword,

      textAlignVertical: TextAlignVertical.top,

      style: TextStyle(
        fontSize: fontSize ?? 14,
        color: fontColor ?? Colors.black,
      ),

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: fontSize ?? 14, color: fontColor),
        filled: fillColor != null,
        fillColor: fillColor,

        prefixIcon: leadIcon,

        suffixIcon: trailIcon != null
            ? GestureDetector(onTap: onTrailIconTap, child: trailIcon)
            : null,

        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),

        border: disableBorder ? InputBorder.none : activeBorder,
        enabledBorder: disableBorder ? InputBorder.none : activeBorder.copyWith(
          borderSide: BorderSide(
            color: AppColors.kBorderColor.withAlpha(5)
          )
        ),
        focusedBorder: disableBorder
            ? InputBorder.none
            : activeBorder.copyWith(
                borderSide: BorderSide(
                  color: AppColors.kBorderColor.withAlpha(50),
                  width: 0,
                ),
              ),
      ),
    );
  }
}
