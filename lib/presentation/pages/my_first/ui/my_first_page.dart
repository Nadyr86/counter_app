import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_1/app_constants/colors/app_colors.dart';
import 'package:tapshyrma_1/app_constants/text_styles/app_text_styles.dart';
import 'package:tapshyrma_1/app_constants/texts/app_texts.dart';
import 'package:tapshyrma_1/presentation/pages/my_first/cubit/counter_cubit.dart';
import 'package:tapshyrma_1/presentation/pages/my_first/cubit/my_first_cubit.dart';
import 'package:tapshyrma_1/presentation/pages/my_second/ui/my_second_page.dart';
import 'package:tapshyrma_1/presentation/widgets/app_bars/custom_app_bar.dart';
import 'package:tapshyrma_1/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:tapshyrma_1/presentation/widgets/buttons/custom_text_button.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key key}) : super(key: key);

  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(title: AppTexts.tapshyrma1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: ((context, state) {
              return CustomTextButton(
                number: state,
                bgColor: AppColors.mainColor,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => MyFirstCubit(state),
                      child: MySecondPage(),
                    ),
                  ),
                ),
              );
            }),
          ),
          BlocBuilder<MyFirstCubit, MyFirstState>(builder: (context, state) {
            if (state is MyFirstInitial) {
              Text(
                'MyFirstInitial',
                style: AppTextStyles.appBarText,
              );
            }
            if (state is MyFirstPositive) {
              return Column(
                children: [
                  Text(
                    'POSITIVE',
                    style: AppTextStyles.appBarText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextButton(
                    number: state.number,
                    bgColor: AppColors.mainColor,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => MyFirstCubit(state.number),
                          child: MySecondPage(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            if (state is MyFirstNegative) {
              return Column(
                children: [
                  Text(
                    'NEGATIVE',
                    style: AppTextStyles.appBarText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextButton(
                    number: state.number,
                    bgColor: AppColors.blueDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => MyFirstCubit(state.number),
                          child: MySecondPage(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          }),
          SizedBox(
            height: 34.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();

                    context.read<MyFirstCubit>().changNumber(false);
                  },
                  icon: Icons.remove),
              SizedBox(
                width: 25,
              ),
              CustomIconButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                    context.read<MyFirstCubit>().changNumber(true);
                  },
                  icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }

  // void _changNumber(bool isAdd) {
  //   if (isAdd) {
  //     setState(() {
  //       _number++;
  //     });
  //   } else {
  //     setState(() {
  //       _number--;
  //     });
  //   }
  // }
}
