import 'package:flutter/material.dart';
import 'package:new_project/utils/styles.dart';
import 'package:new_project/views/widgets/custom_elevated_button.dart';
import 'package:new_project/views/widgets/custom_header_widget.dart';

class BestArtistWidget extends StatelessWidget {
  const BestArtistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaderWidget(
          titleText: "Best Artist",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset("assets/images/best_artist_image.png"),
            ),
            title: const Text(
              "Darlene Robertson",
              style: Styles.textStyle14w500,
            ),
            subtitle: Text(
              "125k Followers",
              style: Styles.textStyle12w400
                  .copyWith(color: const Color(0xff979796)),
            ),
            trailing: const CustomElevatedButton(
              text: "Follow",
              buttonColor: Color(0xffA3D80D),
            ),
          ),
        )
      ],
    );
  }
}
