
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/utils/styles.dart';

class BidTitle extends StatelessWidget {
  const BidTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Hypebest Apes G",
        style: Styles.textStyle16,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          "End in",
          style: Styles.textStyle12.copyWith(color: const Color(0xff979796)),
        ),
        Row(
          children: [
            Icon(
              Icons.lock_clock,
              size: 14.sp,
            ),
            const Text("  1h 23m 32s", style: Styles.textStyle14),
          ],
        ),
      ])
    ]);
  }
}
