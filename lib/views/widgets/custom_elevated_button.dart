import 'package:flutter/material.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.buttonColor, required this.text});
final Color buttonColor ;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(color: AppColors.kWhiteColor),
        ),
        );
  }
}