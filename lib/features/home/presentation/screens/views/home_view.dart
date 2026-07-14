import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:makan/core/style/app_text_styles.dart';
import 'package:makan/features/home/presentation/controllers/home_controller.dart';
import 'package:makan/features/home/presentation/screens/widgets/all_continents.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_back_ground.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_header.dart';
import 'package:makan/features/home/presentation/screens/widgets/popular_places.dart';
import 'package:makan/features/home/presentation/screens/widgets/search_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned.fill(
              child: HomeBackGround(),
            ),
            Positioned.fill(
              child: Obx(() => _buildBody()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (controller.isLoading.value) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (controller.errMessage.value.isNotEmpty) {
      return Center(
        child: Text(
          controller.errMessage.value,
          style: AppTextStyles.countryHeroTitle,
          textAlign: TextAlign.center,
        ),
      );
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Column(
        children: [
          const HomeScreenHeader(),
          SizedBox(height: 8.h),
          const SearchSection(),
          SizedBox(height: 16.h),
          AllContinentsWidget(
            continents: controller.continents,
          ),
          SizedBox(height: 16.h),
          const PopularPlaces(),
        ],
      ),
    );
  }
}