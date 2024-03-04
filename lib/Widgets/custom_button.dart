import 'package:flutter/material.dart';
import '../Utils/contants.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color textColor;
  final double? width;
  final double? height;
  final TextAlign? textAlign;
  final VoidCallback function;
  final int? maxLines;
  final double? fontSize;
  final bool invert;
  final double? borderRadius;
  const CustomButton(
      {Key? key,
      required this.buttonColor,
      required this.text,
      this.textAlign,
      this.maxLines,
      this.textColor = Colors.black,
      required this.function,
      this.invert = false,
        this.fontSize,
      this.width,
      this.height,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        width: width ?? MediaQuery.of(context).size.width * 0.4,
        height: height ?? 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            border: invert == true
                ? Border.all(color: primaryColor, width: 1)
                : null,
            color: invert == true ? null : buttonColor),
        child: CustomText(
          text: text,
          color: textColor,
          fontsize: fontSize ?? 13.0,
          fontWeight: FontWeight.bold,
          textAlign: textAlign,
          maxLines: maxLines,
        ),
      ),
    );
  }
}
