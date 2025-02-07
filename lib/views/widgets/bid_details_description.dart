import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/utils/styles.dart';

class BidDetailsDescription extends StatelessWidget {
  const BidDetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Styles.textStyleSemiBold20,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
          style: Styles.textStyle14w400.copyWith(
              color: const Color(0xff979796)),
        ),
      ],
    );
  }
}
