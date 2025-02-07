import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/bid_details_description.dart';
import 'package:new_project/views/widgets/bid_details_header.dart';
import 'package:new_project/views/widgets/custom_icon_button.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.bid});
  final BidModel bid;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              height: 329,
              width: double.infinity,
              bid.image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          BidDetailsHeader(bid: bid),
          const BidDetailsDescription(),
          SizedBox(
            height: 36.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: Styles.textStyle16
                        .copyWith(color: const Color(0xffBBBBBB)),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    bid.price,
                    style: Styles.textStyleSemiBold20,
                  ),
                ],
              ),
              SizedBox(width: 44.w),
              SizedBox(
                width: 180,
                height: 48.h,
                child: CustomElevatedButtonIcon(
                    text: "Place Bid",
                    iconData: Icons.arrow_forward_ios_sharp,
                    buttonColor: AppColors.kBlackColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
