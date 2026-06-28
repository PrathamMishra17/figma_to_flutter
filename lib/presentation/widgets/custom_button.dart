
import 'package:figma_to_flutter/export.dart';

class CustomButton extends StatelessWidget{
  final double height;
  final double width;
  final Widget content;
  final VoidCallback? onTap;
  final Gradient? gradient;
  final Color? borderColor;
  final Color? color;

  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    required this.content,
     this.gradient,
     this.color,
    this.borderColor,
     this.onTap,

  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          border: Border.all(
            color: borderColor??Colors.transparent
          ),
          borderRadius: BorderRadius.circular(12)

        ),

        child: Center(
          child: content,
        ),

      ),
    );
  }
}