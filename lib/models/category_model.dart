import 'package:flutter/material.dart';

class CategoryModel {
  final String text;
  final bool? isSelected;
  final Color? color;
  CategoryModel(
      {required this.text, this.isSelected = false, this.color = Colors.grey});
}
