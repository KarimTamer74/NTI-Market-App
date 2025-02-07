import 'package:flutter/material.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.bid});
  final BidModel bid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(
          "Details",
          style: Styles.textStyle18,
        ),
      ),
      body: DetailsViewBody(
        bid: bid,
      ),
    );
  }
}
