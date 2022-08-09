import 'package:counter_app/app_constants/textStyle/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int number;
  final Color color;
  const CustomContainer({Key key, @required this.number, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 147.0, vertical: 20.0),
        child: Text(
          'Сан:  ${number.toString()}',
          style: AppTextStyles.numberStyle,
        ),
      ),
    );
  }
}
