import 'package:flutter/material.dart';
import 'package:makan/features/continent/presentation/screens/widgets/all_countries_sliver_list.dart';
import 'package:makan/core/layout/main_screen_back_ground.dart';
import 'package:makan/features/continent/presentation/screens/widgets/continent_top_section.dart';
import 'package:makan/features/continent/presentation/screens/widgets/continet_options_list.dart';

class ContinentView extends StatelessWidget {
  const ContinentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: MainScreenBackGround()),
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ContinentTopSection(),
                      SizedBox(height: 16),
                      ContinetOptionsList(),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
                AllCountriesSliverList(),
                SliverToBoxAdapter(child: SizedBox(height: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
