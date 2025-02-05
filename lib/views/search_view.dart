import 'package:flutter/material.dart';
import 'package:new_project/utils/styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Search View",
          style: Styles.textStyle22,
        ),
      ),
    );
  }
}
