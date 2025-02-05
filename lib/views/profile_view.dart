import 'package:flutter/material.dart';
import 'package:new_project/utils/styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Profile View",
          style: Styles.textStyle22,
        ),
      ),
    );
  }
}
