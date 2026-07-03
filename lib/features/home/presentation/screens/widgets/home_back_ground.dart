import 'package:flutter/material.dart';
import 'package:makan/core/style/app_colors.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.homeBackgroundGradient,
        ),
      ),
    );
  }
}
