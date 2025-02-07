import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/utils/constants.dart';
import 'package:new_project/views/widgets/best_artist_widget.dart';
import 'package:new_project/views/widgets/categories_list_view.dart';
import 'package:new_project/views/widgets/home_view_top_title.dart';
import 'package:new_project/views/widgets/top_colection_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });
  static BidModel bid = BidModel(
      title: "Hypebest Apes G",
      description:
          "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
      price: "2.23 ETH",
      image: "assets/images/Imgae.png",
      quantity: 125,
      id: 14415,
      date: "  1h 23m 32s");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.appPadding,
      child: ListView(
        children: [
          const HomeViewTopTittle(),
          SizedBox(height: 32.h),
          const CategoriesListView(),
          SizedBox(height: 24.h),
          TopColectionSection(bid: bid),
          SizedBox(height: 24.h),
          const BestArtistWidget(),
        ],
      ),
    );
  }
}
