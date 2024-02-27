import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.buttonBgColor = ColorConstants.primaryBlue,
      this.buttonFgColor = ColorConstants.primaryWhite,
      this.haveBorder = false,
      required this.onTap});

  final String buttonText;
  final Color buttonBgColor;
  final Color buttonFgColor;
  final bool haveBorder;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            border: haveBorder
                ? Border.all(
                    color: ColorConstants.primaryBlack.withOpacity(0.4))
                : null,
            color: buttonBgColor,
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: buttonFgColor),
        ),
      ),
    );
  }
}
