import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/bid_time_ended.dart';

class BidDetailsHeader extends StatelessWidget {
  const BidDetailsHeader({
    super.key,
    required this.bid,
  });

  final BidModel bid;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "#${bid.id}",
          style: Styles.textStyleSemiBold20.copyWith(
            color: const Color(0xffA3D80D),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(bid.title, style: Styles.textStyleSemiBold20),
            CircleAvatar(
                backgroundColor: const Color(0xffF6FBE7),
                child: SvgPicture.asset("assets/icons/crown.svg"))
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(44)),
              child: Text(
                "${bid.quantity}  Sold",
                style: Styles.textStyle12w500.copyWith(
                  color: const Color(0xff979796),
                ),
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            BidTimeEnded(bid: bid),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        const Divider(),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
