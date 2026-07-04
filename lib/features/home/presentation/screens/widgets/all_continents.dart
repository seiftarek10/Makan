import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/features/continent/presentation/screens/views/continent_view.dart';
import 'package:makan/features/home/presentation/model/containents_model.dart';

class AllContinentsWidget extends StatelessWidget {
  const AllContinentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContainentsModel> continents = [
      ContainentsModel(
        name: 'Africa',
        imagePath: Assets.assetsImagesAfrica,
        numberOfCountries: 54,
      ),
      ContainentsModel(
        name: 'Asia',
        imagePath: Assets.assetsImagesAsia,
        numberOfCountries: 48,
      ),
      ContainentsModel(
        name: 'Europe',
        imagePath: Assets.assetsImagesEurope,
        numberOfCountries: 44,
      ),
      ContainentsModel(
        name: 'North America',
        imagePath: Assets.assetsImagesNorthAmerica,
        numberOfCountries: 23,
      ),
      ContainentsModel(
        name: 'South America',
        imagePath: Assets.assetsImagesSouthAmerica,
        numberOfCountries: 12,
      ),
      ContainentsModel(
        name: 'Australia',
        imagePath: Assets.assetsImagesAustralia,
        numberOfCountries: 11,
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 2.7 / 2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(() => ContinentView()),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(continents[index].imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 8,
                start: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      continents[index].name,
                      style: AppTextStyles.homeGreetingTitle,
                    ),
                    Text(
                      '${continents[index].numberOfCountries} Countries',
                      style: AppTextStyles.homeGreetingSubtitle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
