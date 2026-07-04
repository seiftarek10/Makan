import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:makan/features/continent/presentation/screens/widgets/continent_back_ground.dart';
import 'package:makan/features/continent/presentation/screens/widgets/continent_header.dart';

class ContinentView extends StatelessWidget {
  const ContinentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: ContinentBackGround()),
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    height: 220.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.assetsImagesAsia),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedContinentHeader(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  LocalizationKeys.exploreEurope.tr,
                                  style: AppTextStyles.countryHeroTitle,
                                ),
                                Text(
                                  LocalizationKeys.destinationsWaiting.tr,
                                  style: AppTextStyles.countryHeroDescription,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
