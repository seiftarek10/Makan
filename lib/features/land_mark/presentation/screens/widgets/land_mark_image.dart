
import 'package:flutter/material.dart';
import 'package:makan/constants/assets.dart';

class LandMarkImage extends StatelessWidget {
  const LandMarkImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesEurope),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
