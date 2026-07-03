import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:makan/constants/assets.dart';
import 'package:makan/core/style/app_colors.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/core/translation/localization_keys.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_back_ground.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_header.dart';
import 'package:makan/features/home/presentation/screens/widgets/search_section.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: HomeBackGround()),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                child: Column(children: [HomeScreenHeader(),
                SizedBox(height: 16.h),
                 SearchSection()]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
