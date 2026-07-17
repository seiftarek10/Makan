import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:AppColors.ctaButtonGradient),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            LocalizationKeys.bookVisit.tr,
            style: AppTextStyles.ctaButtonLabel
          ),
        ),
      ),
    );
  }
}