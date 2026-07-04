
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/features/country/presentation/screens/widgets/land_mark_card.dart';

class AllLandMarksSliverList extends StatelessWidget {
  const AllLandMarksSliverList({
    super.key,
  });

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
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 12,
          ),
          child: LandMarkCard(),
        );
      },
    );
  }
}
