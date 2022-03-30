import 'package:flutter/material.dart';
import 'package:tapshyrma_1/app_constants/colors/app_colors.dart';
import 'package:tapshyrma_1/app_constants/texts/app_texts.dart';
import 'package:tapshyrma_1/widgets/app_bars/custom_app_bar.dart';

import 'package:tapshyrma_1/widgets/buttons/custom_text_button.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key key, this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(title: AppTexts.tapshyrma2),
      body: Center(
        child: CustomTextButton(
          number: number,
          onTap: null,
          bgColor: AppColors.grey,
        ),
      ),
    );
  }
}
