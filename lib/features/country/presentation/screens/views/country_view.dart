import 'package:flutter/material.dart';
import 'package:makan/core/layout/main_screen_back_ground.dart';
import 'package:makan/features/country/presentation/screens/widgets/all_land_marks_sliver_list.dart';
import 'package:makan/features/country/presentation/screens/widgets/country_top_section.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: MainScreenBackGround()),
            CustomScrollView(
              slivers: [CountryViewTopSection(), AllLandMarksSliverList()],
            ),
          ],
        ),
      ),
    );
  }
}
