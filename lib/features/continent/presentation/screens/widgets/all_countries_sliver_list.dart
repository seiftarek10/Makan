import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:makan/features/continent/presentation/screens/widgets/country_card.dart';

class AllCountriesSliverList extends StatelessWidget {
  const AllCountriesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: CountryCard(
            countryName: LocalizationKeys.france.tr,
            flag: Assets.assetsImagesAfrica,
            image: Assets.assetsImagesEurope,
            landmarksCount: 23,
          ),
        );
      },
    );
  }
}
