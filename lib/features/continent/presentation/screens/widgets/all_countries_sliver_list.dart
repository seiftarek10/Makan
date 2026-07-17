import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:makan/features/continent/presentation/screens/widgets/country_card.dart';
import 'package:makan/features/country/presentation/screens/views/country_view.dart';

class AllCountriesSliverList extends StatelessWidget {
  const AllCountriesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: GestureDetector(
            onTap: () {
              Get.to(CountryView());
            },
            child: CountryCard(
              countryName: LocalizationKeys.france.tr,
              flag: Assets.assetsImagesAfrica,
              image: Assets.assetsImagesEurope,
              landmarksCount: 23,
            ),
          ),
        );
      },
    );
  }
}
