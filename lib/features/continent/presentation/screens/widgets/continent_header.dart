import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:svg_flutter/svg.dart';

class AnimatedContinentHeader extends StatefulWidget {
  const AnimatedContinentHeader({super.key});

  @override
  State<AnimatedContinentHeader> createState() =>
      _AnimatedContinentHeaderState();
}

class _AnimatedContinentHeaderState extends State<AnimatedContinentHeader> {
  bool _isSearching = false;

  void _toggleSearch(bool value) {
    setState(() => _isSearching = value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!_isSearching) ...[
          _buildBackButton(),
          const Spacer(),
          const Spacer(),
          _buildTitle(),
          const Spacer(),
          const Spacer(),
        ],

        Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutExpo,
            width: _isSearching ? 250.w : 36.w,
            alignment: Alignment.centerRight,
            child: _isSearching ? _buildSearchField() : _buildSearchButton(),
          ),
        ),
      ],
    );
  }

  Widget _buildBackButton() {
    return AnimatedOpacity(
      opacity: _isSearching ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: Get.back,
        child: CircleAvatar(
          radius: 18.r,
          backgroundColor: AppColors.white.withValues(alpha: 0.75),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return AnimatedOpacity(
      opacity: _isSearching ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: Text(
        LocalizationKeys.eiffelTower.tr,
        style: AppTextStyles.headerPageText,
      ),
    );
  }

  Widget _buildSearchButton() {
    return GestureDetector(
      onTap: () => _toggleSearch(true),
      child: CircleAvatar(
        radius: 18.r,
        backgroundColor: AppColors.white.withValues(alpha: 0.75),
        child: SvgPicture.asset(Assets.assetsImagesSearch),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: LocalizationKeys.searchWord.tr,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.r)),
        suffixIcon: IconButton(
          onPressed: () => _toggleSearch(false),
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }
}
