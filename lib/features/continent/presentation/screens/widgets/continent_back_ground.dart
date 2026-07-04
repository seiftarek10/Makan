
import 'package:flutter/material.dart';
import 'package:makan/core/style/app_colors.dart';

class ContinentBackGround extends StatelessWidget {
  const ContinentBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(

          transform: const GradientRotation(3 / 13),

          colors: AppColors.homeBackgroundGradient,
          
          )
            
      ),
    );
  }
}
