
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class LandMarkCard extends StatelessWidget {
  const LandMarkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteWithOpacity,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: Image.asset(
                Assets.assetsImagesAustralia,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            LocalizationKeys.france.tr,
            textAlign: TextAlign.center,
            style: AppTextStyles.attractionCardTitle,
          ),
          Text(
            LocalizationKeys.paris.tr,
            textAlign: TextAlign.center,
            style: AppTextStyles.attractionCardSubtitle,
          ),
          const SizedBox(height: 12),

        ],
      ),
    );
  }
}
