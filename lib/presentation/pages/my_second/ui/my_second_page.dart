import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_1/app_constants/colors/app_colors.dart';
import 'package:tapshyrma_1/app_constants/texts/app_texts.dart';
import 'package:tapshyrma_1/presentation/widgets/app_bars/custom_app_bar.dart';
import 'package:tapshyrma_1/presentation/widgets/buttons/custom_text_button.dart';

import '../../my_first/cubit/my_first_cubit.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(title: AppTexts.tapshyrma2),
      body: Center(
        child: CustomTextButton(
          number: context.read<MyFirstCubit>().number,
          onTap: null,
          bgColor: AppColors.grey,
        ),
      ),
    );
  }
}
