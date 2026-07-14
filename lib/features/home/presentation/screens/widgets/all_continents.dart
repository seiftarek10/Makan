import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/features/continent/presentation/screens/views/continent_view.dart';
import 'package:makan/features/home/domain/entities/continet_entity.dart';

class AllContinentsWidget extends StatelessWidget {
  const AllContinentsWidget({super.key, required this.continents});
  final List<ContinetEntity> continents;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: continents.length,
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
                    image: NetworkImage(continents[index].imageUrl),
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
