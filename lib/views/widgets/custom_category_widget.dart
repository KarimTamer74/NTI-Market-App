import 'package:flutter/material.dart';
import 'package:new_project/models/category_model.dart';
import 'package:new_project/utils/styles.dart';

class CustomCategoryWidget extends StatelessWidget {
  const CustomCategoryWidget({super.key, required this.categorie});
  final CategoryModel categorie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor:
                categorie.isSelected == true ? Colors.green : Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32))),
        child: Center(
          child: Text(
            categorie.text,
            style: Styles.textStyle12.copyWith(
                color: categorie.isSelected == true
                    ? Colors.white
                    : Colors.grey[500]),
          ),
        ),
      ),
    );
  }
}
