import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    this.fontSize,
    required this.onPressed,
  });

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12), //IMPORTANT
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: Styles.titleStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize ?? 20,
          ),
        ),
      ),
    );
  }
}
