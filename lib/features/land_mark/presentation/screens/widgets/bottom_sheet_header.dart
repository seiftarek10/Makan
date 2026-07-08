import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class LandMarkBottomSheetHeader extends StatelessWidget {
  const LandMarkBottomSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 40,
            height: 4,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 20),
        Text(
          LocalizationKeys.eiffelTower.tr,
          style: AppTextStyles.attractionSheetTitle,
        ),
        Text(
          LocalizationKeys.france,
          style: AppTextStyles.attractionSheetLocation,
        ),
      ],
    );
  }
}
