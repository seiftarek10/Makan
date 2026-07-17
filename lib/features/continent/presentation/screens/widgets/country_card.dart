import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    super.key,
    required this.image,
    required this.countryName,
    required this.landmarksCount,
    required this.flag,
  });

  final String image;
  final String countryName;
  final int landmarksCount;
  final String flag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 12),
      height: 65.h,
      decoration: BoxDecoration(
        color: AppColors.whiteWithOpacity,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22.r),
            child: Image.asset(
              image,
              width: 75.w,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(countryName, style: AppTextStyles.attractionCardTitle),
                Text(
                  '$landmarksCount معلم',
                  style: AppTextStyles.attractionCardSubtitle,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 18.w),
            child: ClipOval(
              child: Image.asset(
                flag,
                width: 34.w,
                height: 34.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
