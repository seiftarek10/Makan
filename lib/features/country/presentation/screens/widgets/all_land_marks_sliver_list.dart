import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:makan/features/country/presentation/screens/widgets/land_mark_card.dart';
import 'package:makan/features/land_mark/presentation/screens/views/land_mark_view.dart';

class AllLandMarksSliverList extends StatelessWidget {
  const AllLandMarksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.2,
        mainAxisSpacing: 15.h,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: GestureDetector(
            onTap: () => Get.to(const LandMarkView()),
            child: LandMarkCard(),
          ),
        );
      },
    );
  }
}
