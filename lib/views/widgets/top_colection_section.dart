import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/bid_title.dart';
import 'package:new_project/views/widgets/custom_icon_button.dart';
import 'package:new_project/views/widgets/custom_header_widget.dart';

class TopColectionSection extends StatelessWidget {
  const TopColectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaderWidget(
          titleText: "Top Collection  ",
          isShowIcon: true,
        ),
        SizedBox(height: 16.h),
        Container(
          height: 300.h,
          decoration: BoxDecoration(
              color: AppColors.kWhiteColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            children: [
              Image.asset(
                width: double.infinity,
                "assets/images/Imgae.png",
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: BidTitle(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Highest Bid Today",
                          style: Styles.textStyle12,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/Icon.svg"),
                            const Text(
                              "  2.23 ETH",
                              style: Styles.textStyle14,
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                     CustomElevatedButtonIcon(
                      text: "Place a bid",
                      iconData: Icons.arrow_forward_ios_sharp,
                      buttonColor: AppColors.kBlackColor,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
