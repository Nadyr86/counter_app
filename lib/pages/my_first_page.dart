import 'package:flutter/material.dart';
import 'package:tapshyrma_1/app_constants/colors/app_colors.dart';
import 'package:tapshyrma_1/app_constants/texts/app_texts.dart';
import 'package:tapshyrma_1/pages/my_second_page.dart';
import 'package:tapshyrma_1/widgets/app_bars/custom_app_bar.dart';
import 'package:tapshyrma_1/widgets/buttons/custom_icon_button.dart';

import 'package:tapshyrma_1/widgets/buttons/custom_text_button.dart';

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
          CustomTextButton(
              number: _number,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySecondPage(
                      number: _number,
                    ),
                  ),
                );
              }),
          SizedBox(
            height: 34.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                  onPressed: () => _changNumber(false), icon: Icons.remove),
              SizedBox(
                width: 25,
              ),
              CustomIconButton(
                  onPressed: () => _changNumber(true), icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }

  void _changNumber(bool isAdd) {
    if (isAdd) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
