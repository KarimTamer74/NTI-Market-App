import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/models/category_model.dart';
import 'package:new_project/utils/styles.dart';

class CustomCategoryWidget extends StatefulWidget {
  const CustomCategoryWidget(
      {super.key, required this.categorie, required this.isSelected});
  final CategoryModel categorie;
  final bool isSelected;

  @override
  State<CustomCategoryWidget> createState() => _CustomCategoryWidgetState();
}

class _CustomCategoryWidgetState extends State<CustomCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 84.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: widget.isSelected == true
              ? const Color(0xffA3D80D)
              : Colors.grey[200],
        ),
        child: Center(
          child: Text(
            widget.categorie.text,
            style: Styles.textStyle12w500.copyWith(
                color: widget.isSelected == true
                    ? Colors.white
                    : Colors.grey[500]),
          ),
        ),
      ),
    );
  }
}
/*
ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.isSelected == true
                ? const Color(0xffA3D80D)
                : Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32))),
        child: Center(
          child: Text(
            widget.categorie.text,
            style: Styles.textStyle12.copyWith(
                color: widget.isSelected == true
                    ? Colors.white
                    : Colors.grey[500]),
          ),
        ),
      ),
*/