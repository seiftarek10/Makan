import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class ContinentOptionButton extends StatelessWidget {
  const ContinentOptionButton({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: isSelected ? null : AppColors.whiteWithOpacity,
        gradient: isSelected
            ? LinearGradient(
                begin: AlignmentDirectional(0, 2),
                transform: const GradientRotation(1 / 4),
                colors: AppColors.trendingBadgeGradient,
              )
            : null,
        borderRadius: BorderRadiusDirectional.circular(16.r),
      ),
      child: Center(
        child: Text(
          LocalizationKeys.bookVisit.tr,
          style: AppTextStyles.ctaButtonLabel.copyWith(
            color: isSelected ? null : AppColors.textBodyParagraph,
          ),
        ),
      ),
    );
  }
}
