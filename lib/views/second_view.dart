import 'package:counter_app/app_constants/colors/app_colors.dart';
import 'package:counter_app/app_constants/texts/app_texts.dart';
import 'package:counter_app/widgets/custom_app_bar.dart';
import 'package:counter_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({this.kelgenSan});
  final String kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: AppTexts.homework2),
        body: Center(
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CustomContainer(
                number: int.parse(kelgenSan),
                color: AppColors.mainColor,
              )),
        ));
  }
}
