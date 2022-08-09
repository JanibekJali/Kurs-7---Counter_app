import 'package:counter_app/app_constants/colors/app_colors.dart';
import 'package:counter_app/app_constants/texts/app_texts.dart';
import 'package:counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_container.dart';
import 'second_view.dart';

class FirstView extends StatefulWidget {
  const FirstView({Key key}) : super(key: key);

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppTexts.homework1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => SecondView(
                        kelgenSan: number.toString(),
                      )),
                ),
              );
            },
            child: CustomContainer(
              number: number,
              color: AppColors.mainColor,
            ),
          ),
          const SizedBox(
            height: 55.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                  onTap: () => _changeNumber(false), icon: Icons.remove),
              CustomButton(onTap: () => _changeNumber(true), icon: Icons.add),
            ],
          )
        ],
      )),
    );
  }

  void _changeNumber(bool _number) {
    if (_number == true) {
      setState(() {
        number++;
      });
    } else {
      setState(() {
        number--;
      });
    }
  }
}
