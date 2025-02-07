import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/styles.dart';

class BidTimeEnded extends StatelessWidget {
  const BidTimeEnded({
    super.key,
    required this.bid,
  });

  final BidModel bid;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.timer_sharp,
          size: 14.sp,
        ),
        Text(bid.date, style: Styles.textStyle14w500),
      ],
    );
  }
}
