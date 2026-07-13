import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/features/continent/presentation/screens/views/continent_view.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';

class AllContinentsWidget extends StatelessWidget {
  const AllContinentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContinetEntity> continents = [
      ContinetEntity(
        name: 'Africa',
        imageUrl: Assets.assetsImagesAfrica,
        numberOfCountries: 54,
      ),
      ContinetEntity(
        name: 'Asia',
        imageUrl: Assets.assetsImagesAsia,
        numberOfCountries: 48,
      ),
      ContinetEntity(
        name: 'Europe',
        imageUrl: Assets.assetsImagesEurope,
        numberOfCountries: 44,
      ),
      ContinetEntity(
        name: 'North America',
        imageUrl: Assets.assetsImagesNorthAmerica,
        numberOfCountries: 23,
      ),
      ContinetEntity(
        name: 'South America',
        imageUrl: Assets.assetsImagesSouthAmerica,
        numberOfCountries: 12,
      ),
      ContinetEntity(
        name: 'Australia',
        imageUrl: Assets.assetsImagesAustralia,
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
                    image: AssetImage(continents[index].imageUrl),
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
