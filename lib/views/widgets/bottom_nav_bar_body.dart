import 'package:flutter/material.dart';
import 'package:new_project/views/profile_view.dart';
import 'package:new_project/views/saves_view.dart';
import 'package:new_project/views/search_view.dart';
import 'package:new_project/views/widgets/home_view_body.dart';

List<StatelessWidget> getBottomNavBarBody() {
  return [
    const HomeViewBody(),
    const SearchView(),
    const SavesView(),
    const ProfileView()
  ];
}
