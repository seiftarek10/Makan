import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocalizationKeys.welcome.tr,
              style: AppTextStyles.headerPageText,
            ),
            Text(
              LocalizationKeys.where.tr,
              style: AppTextStyles.homeGreetingSubtitle,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Get.locale == const Locale('ar', 'AE')
                ? Get.updateLocale(const Locale('en', 'US'))
                : Get.updateLocale(const Locale('ar', 'AE'));
          },
          child: Text(
            Get.locale == const Locale('ar', 'AE') ? 'En' : 'Ar',
            style: AppTextStyles.ctaButtonLabel,
          ),
        ),
      ],
    );
  }
}
