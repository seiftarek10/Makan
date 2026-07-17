import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:svg_flutter/svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            onSaved: (value) {},
            cursorColor: AppColors.homeBgGradientTop,
            decoration: InputDecoration(
              fillColor: AppColors.white,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.searchBarIcon,
              ),
              hintText: LocalizationKeys.searchHint.tr,
              hintStyle: AppTextStyles.searchBarPlaceholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 6.w),
        IconButton(
          icon: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.filterButtonBg,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: SvgPicture.asset(
              Assets.assetsImagesFilter,
              colorFilter: ColorFilter.mode(
                AppColors.filterButtonIcon,
                BlendMode.srcIn,
              ),
              fit: BoxFit.cover,
              height: 16.h,
            ),
          ),
          onPressed: () async {},
        ),
      ],
    );
  }
}
