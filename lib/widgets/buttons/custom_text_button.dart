import 'package:flutter/material.dart';
import 'package:tapshyrma_1/app_constants/colors/app_colors.dart';
import 'package:tapshyrma_1/app_constants/text_styles/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {@required this.onTap, @required this.number, this.bgColor, Key key})
      : super(key: key);

  final int number;
  final GestureTapCallback onTap;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.mainColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
          child: Text(
            'san: ' + number.toString(),
            style: AppTextStyles.buttonText,
          ),
        ),
      ),
    );
  }
}
