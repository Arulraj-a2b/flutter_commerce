import 'package:flutter/material.dart';
import 'package:flutter_commerce/utils/colors.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final Function()? onClick;

  const TextWidget({
    super.key,
    @required required this.text,
    this.size = 14,
    this.fontWeight,
    this.color = ThemeColors.primaryText,
    this.wordSpacing,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
              text,
              style: TextStyle(
                fontSize: size,
                fontWeight: fontWeight ?? FontWeight.w500,
                color: color,
                wordSpacing: wordSpacing,
              ),
            )
          : TextButton(
              onPressed: onClick,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: size,
                  fontWeight: fontWeight ?? FontWeight.w500,
                  color: color,
                  wordSpacing: wordSpacing,
                ),
              ),
            ),
    );
  }
}
