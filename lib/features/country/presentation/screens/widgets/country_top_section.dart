import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class CountryViewTopSection extends StatelessWidget {
  const CountryViewTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        height: 220.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesSouthAmerica),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColors.white.withValues(alpha: 0.75),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.black,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  LocalizationKeys.france.tr,
                  style: AppTextStyles.countryHeroTitle,
                ),
                Text(
                  LocalizationKeys.eiffelDescription.tr,
                  style: AppTextStyles.countryHeroDescription,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
