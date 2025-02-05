import 'package:flutter/material.dart';
import 'package:new_project/views/widgets/bottom_nav_bar_body.dart';
import 'package:new_project/views/widgets/custom_bottom_nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int currentPageIndex = 0;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        returnIndex: (value) {
          setState(
            () {
              currentPageIndex = value;
            },
          );
        },
      ),
      body: getBottomNavBarBody()[currentPageIndex],
    );
  }
}
