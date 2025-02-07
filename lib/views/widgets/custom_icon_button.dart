import 'package:flutter/material.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon({
    super.key,
    required this.text,
    this.iconData,
    required this.buttonColor,
  });
  final String text;
  final IconData? iconData;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        label: Text(
          text,
          style: Styles.textStyle16.copyWith(color: AppColors.kWhiteColor),
        ),
        icon: Icon(
          iconData,
          color: AppColors.kWhiteColor,
        ));
  }
}
