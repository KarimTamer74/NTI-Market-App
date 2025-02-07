import 'package:flutter/material.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/bid_time_ended.dart';

class BidTitle extends StatelessWidget {
  const BidTitle({
    super.key,
    required this.bid,
  });
  final BidModel bid;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        bid.title,
        style: Styles.textStyle16,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          "Ends in",
          style:
              Styles.textStyle12w400.copyWith(color: const Color(0xff979796)),
        ),
        BidTimeEnded(bid: bid),
      ])
    ]);
  }
}
