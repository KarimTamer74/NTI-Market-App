import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/constants.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/bid_title.dart';
import 'package:new_project/views/widgets/custom_header_widget.dart';
import 'package:new_project/views/widgets/custom_icon_button.dart';

class TopColectionSection extends StatelessWidget {
  const TopColectionSection({super.key, required this.bid});
  final BidModel bid;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaderWidget(
          titleText: "Top Collection  ",
          isShowIcon: true,
        ),
        SizedBox(height: 16.h),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppConstants.detailsView,
                arguments: bid);
          },
          child: Container(
            height: 300.h,
            decoration: BoxDecoration(
                color: AppColors.kWhiteColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              children: [
                Image.asset(
                  width: double.infinity,
                  bid.image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BidTitle(bid: bid),
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
                            style: Styles.textStyle12w400,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/Icon.svg"),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                bid.price,
                                style: Styles.textStyle14w500,
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      CustomElevatedButtonIcon(
                        text: "Place Bid",
                        iconData: Icons.arrow_forward_ios_sharp,
                        buttonColor: AppColors.kBlackColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
