import 'package:flutter/material.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';

class HomeViewTopTittle extends StatelessWidget {
  const HomeViewTopTittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Selling the ',
          style: Styles.textStyle24.copyWith(color: AppColors.kBlackColor),
        ),
        TextSpan(
          text: 'MOST POPULAR ',
          style: Styles.textStyle24.copyWith(color: AppColors.kGreenColor),
        ),
        TextSpan(
          text: 'NFT is only here',
          style: Styles.textStyle24.copyWith(color: AppColors.kBlackColor),
        ),
      ]),
    );
  }
}
