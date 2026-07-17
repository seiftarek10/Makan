
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class AbuotLandMarkWidget extends StatelessWidget {
  const AbuotLandMarkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocalizationKeys.about.tr,
          style: AppTextStyles.attractionCardTitle,
        ),
        Text(
          LocalizationKeys.eiffelDescription.tr,
          style: AppTextStyles.attractionCardSubtitle,
        ),
      ],
    );
  }
}
