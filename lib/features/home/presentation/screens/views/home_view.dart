import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/features/home/presentation/screens/widgets/all_continents.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_back_ground.dart';
import 'package:makan/features/home/presentation/screens/widgets/home_header.dart';
import 'package:makan/features/home/presentation/screens/widgets/search_section.dart';

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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    children: [
                      HomeScreenHeader(),
                      SizedBox(height: 16.h),
                      SearchSection(),
                      SizedBox(height: 16.h),
                      AllContinentsWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
