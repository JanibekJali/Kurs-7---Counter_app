import 'package:counter_app/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData icon;
  const CustomButton({
    @required this.onTap,
    @required this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: Icon(
            icon,
            color: Colors.white,
            size: 48,
          ),
        ),
      ),
    );
  }
}
