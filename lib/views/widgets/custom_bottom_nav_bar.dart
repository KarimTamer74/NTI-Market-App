import 'package:flutter/material.dart';

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
      selectedIndex: currentIndex,
      animationDuration: const Duration(seconds: 2),
      onDestinationSelected: (value) {
        setState(() {
          currentIndex = value;
          widget.returnIndex(value);
        });
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: "",
          selectedIcon: Icon(Icons.home),
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.search_outlined),
          icon: Icon(Icons.search),
          label: "",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.save_outlined),
          icon: Icon(Icons.save),
          label: "",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person_outline),
          icon: Icon(Icons.person),
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