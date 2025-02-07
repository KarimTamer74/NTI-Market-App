import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/category_model.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:new_project/views/widgets/custom_category_widget.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});
  static List<CategoryModel> categories = [
    CategoryModel(text: "Trending", isSelected: true),
    CategoryModel(text: "By Artist"),
    CategoryModel(text: "Eth"),
    CategoryModel(text: "Btc"),
  ];

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoriesListView.categories.length,
        itemBuilder: (context, index) {
          return InkWell(
              splashColor: AppColors.kWhiteColor,
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                log(currentIndex.toString());
              },
              child: CustomCategoryWidget(
                  categorie: CategoriesListView.categories[index],
                  isSelected: currentIndex == index));
        },
      ),
    );
  }
}
