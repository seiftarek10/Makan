import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String _fontFamily = 'Cairo';

  static final statusBarTime = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final homeGreetingTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.textHeadlineOnDark,
    height: 1.3,
  );

  static final homeGreetingSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textHeadlineOnDark,
  );


  static final searchBarPlaceholder = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.searchBarPlaceholderText,
  );

  static final sectionHeaderTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textHeadlineOnLight,
  );

  static final sectionHeaderAction = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textTabActive,
  );

 
  static final categoryCardTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textHeadlineOnDark,
  );

  static final categoryCardSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textHeadlineOnDark,
  );


  static final destinationCardTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textHeadlineOnLight,
  );

  static final destinationCardSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondaryMuted,
  );

  static final destinationCardRating = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.ratingText,
  );


  static final listScreenAppBarTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textHeadlineOnDark,
  );

  static final listHeroTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.textHeadlineOnDark,
  );

  static final listHeroSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textHeadlineOnDark,
  );

  static final trendingBadgeLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.trendingBadgeText,
  );

  static final dropdownPillLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.dropdownPillText,
  );

  static final listRowTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.listRowTitleText,
  );

  static final listRowSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.listRowSubtitleText,
  );

  static final countryHeroTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 30.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.textHeadlineOnDark,
  );

  static final countryHeroDescription = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textHeadlineOnDark,
    height: 1.6,
  );

  static final tabLabelActive = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textTabActive,
  );

  static final tabLabelInactive = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textTabInactive,
  );

  static final attractionCardTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textHeadlineOnLight,
  );

  static final attractionCardSubtitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondaryMuted,
  );

  static final attractionCardMeta = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondaryMuted,
  );

  static final attractionCardRatingBadge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static final attractionSheetTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 22.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.bottomSheetTitleText,
  );

  static final attractionSheetLocation = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.bottomSheetSubtitleText,
  );


  static final statChipValue = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.statChipValueText,
  );

  static final statChipLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.statChipLabelText,
  );

  
  static final bodyParagraph = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13.5.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textBodyParagraph,
    height: 1.7,
  );

  static final visitInfoValue = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.visitInfoValueText,
  );

  static final visitInfoLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.visitInfoLabelText,
  );


  static final ctaButtonLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.ctaButtonText,
  );
}
