import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/category_model.dart';
import 'package:new_project/views/widgets/custom_category_widget.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  static List<CategoryModel> categories = [
    CategoryModel(text: "Trending", isSelected: true),
    CategoryModel(text: "By Artist"),
    CategoryModel(text: "Eth"),
    CategoryModel(text: "Btc"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CustomCategoryWidget(categorie: categories[index]);
        },
      ),
    );
  }
}
