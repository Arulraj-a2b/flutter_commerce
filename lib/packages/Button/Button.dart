import 'package:flutter/material.dart';
import 'package:flutter_commerce/packages/Text/Text.dart';
import 'package:flutter_commerce/utils/colors.dart';

class Button extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  double? buttonWidth;
  double? buttonHeight;
  final Function()? onClick;
  final Widget? actionLeft;
  final Widget? actionRight;

  Button(
      {super.key,
      this.textColor = ThemeColors.white,
      this.backgroundColor = ThemeColors.primary,
      this.buttonHeight = 50,
      required this.text,
      this.buttonWidth,
      this.onClick,
      this.actionLeft,
      this.actionRight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (actionLeft != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: actionLeft,
              ),
            TextWidget(
              text: text,
              color: textColor,
            ),
            if (actionRight != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: actionRight,
              ),
          ],
        )),
      ),
    );
  }
}
