import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/utils.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocalizationKeys.mostPopular.tr,
            style: AppTextStyles.sectionHeaderTitle,
          ),

          SizedBox(height: 8.h),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 4.8 / 7,
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: Image.asset(
                              Assets.assetsImagesNorthAmerica,
                              fit: BoxFit.cover,
                              width: 200,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text(
                                'Place Name',
                                style: AppTextStyles.destinationCardTitle,
                              ),
                              Text(
                                'Location',
                                style: AppTextStyles.destinationCardSubtitle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
