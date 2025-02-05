import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget(
      {super.key, required this.titleText, this.isShowIcon = false});
  final String titleText;
  final bool? isShowIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: Styles.textStyle18,
        ),
        isShowIcon == true
            ? SvgPicture.asset(
                "assets/icons/hot_icon.svg",
                height: 20.h,
                width: 20.w,
              )
            : const SizedBox(),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          color: AppColors.kGreyColor,
          onPressed: () {},
        )
      ],
    );
  }
}
