import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/utils/app_colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.returnIndex});
  final Function(int currentIndex) returnIndex;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

int currentIndex = 0;

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: AppColors.kWhiteColor,
      selectedIndex: currentIndex,
      animationDuration: const Duration(seconds: 2),
      onDestinationSelected: (value) {
        setState(() {
          currentIndex = value;
          widget.returnIndex(value);
        });
      },
      destinations: [
        NavigationDestination(
          icon: Icon(
            Icons.home,
            size: 28.sp,
          ),
          label: "",
          selectedIcon: Icon(
            Icons.home,
            size: 28.sp,
          ),
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.search_outlined,
            size: 28.sp,
          ),
          icon: Icon(
            Icons.search,
            size: 28.sp,
          ),
          label: "",
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.save_outlined,
            size: 28.sp,
          ),
          icon: Icon(
            Icons.save,
            size: 28.sp,
          ),
          label: "",
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.person_outline,
            size: 28.sp,
          ),
          icon: Icon(
            Icons.person,
            size: 28.sp,
          ),
          label: "",
        ),
      ],
    );
  }
}
 // const NavigationDestination(
        //   icon: Badge(child: Icon(Icons.notifications_sharp)),
        //   label: 'Notifications',
        // ),