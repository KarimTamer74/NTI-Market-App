import 'package:flutter/material.dart';
import 'package:new_project/utils/styles.dart';

class SavesView extends StatelessWidget {
  const SavesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Saves View",
          style: Styles.textStyle22,
        ),
      ),
    );
  }
}
